const Logger = {
  enabled: true,
  output(...messages) {
    if (!this.enabled) return;
    const timestamp =
      new Date().toLocaleTimeString("zh-CN", { hour12: false }) +
      "." +
      new Date().getMilliseconds().toString().padStart(3, "0");
    console.log(`[ProxyClient] ${timestamp}`, ...messages);
    const logElement = document.createElement("div");
    logElement.textContent = `[${timestamp}] ${messages.join(" ")}`;
    document.body.appendChild(logElement);
  },
};

class ConnectionManager extends EventTarget {
  // =================================================================
  // ===                 *** 请修改此行   *** ===
  constructor(endpoint = "ws://127.0.0.1:9998") {
    // =================================================================
    super();
    this.endpoint = endpoint;
    this.socket = null;
    this.isConnected = false;
    this.reconnectDelay = 5000;
    this.reconnectAttempts = 0;
  }

  async establish() {
    if (this.isConnected) return Promise.resolve();
    Logger.output("正在连接到服务器:", this.endpoint);
    return new Promise((resolve, reject) => {
      try {
        this.socket = new WebSocket(this.endpoint);
        this.socket.addEventListener("open", () => {
          this.isConnected = true;
          this.reconnectAttempts = 0;
          Logger.output("✅ 连接成功!");
          this.dispatchEvent(new CustomEvent("connected"));
          resolve();
        });
        this.socket.addEventListener("close", () => {
          this.isConnected = false;
          Logger.output("❌ 连接已断开，准备重连...");
          this.dispatchEvent(new CustomEvent("disconnected"));
          this._scheduleReconnect();
        });
        this.socket.addEventListener("error", (error) => {
          Logger.output(" WebSocket 连接错误:", error);
          this.dispatchEvent(new CustomEvent("error", { detail: error }));
          if (!this.isConnected) reject(error);
        });
        this.socket.addEventListener("message", (event) => {
          this.dispatchEvent(
            new CustomEvent("message", { detail: event.data })
          );
        });
      } catch (e) {
        Logger.output(
          "WebSocket 初始化失败。请检查地址或浏览器安全策略。",
          e.message
        );
        reject(e);
      }
    });
  }

  transmit(data) {
    if (!this.isConnected || !this.socket) {
      Logger.output("无法发送数据：连接未建立");
      return false;
    }
    this.socket.send(JSON.stringify(data));
    return true;
  }

  _scheduleReconnect() {
    this.reconnectAttempts++;
    setTimeout(() => {
      Logger.output(`正在进行第 ${this.reconnectAttempts} 次重连尝试...`);
      this.establish().catch(() => { });
    }, this.reconnectDelay);
  }
}

class RequestProcessor {
  constructor(cfspiderConfig = {}) {
    this.activeOperations = new Map();
    this.cancelledOperations = new Set();
    this.targetDomain = "generativelanguage.googleapis.com";
    this.maxRetries = 3; // 最多尝试3次
    this.retryDelay = 2000; // 每次重试前等待2秒

    // CFspider 代理配置
    this.cfspider = {
      enabled: cfspiderConfig.enabled || false,
      endpoint: cfspiderConfig.endpoint || '',
      token: cfspiderConfig.token || ''
    };

    if (this.cfspider.enabled) {
      Logger.output(`🌐 CFspider 代理已启用: ${this.cfspider.endpoint}`);
    }
  }

  execute(requestSpec, operationId) {
    const IDLE_TIMEOUT_DURATION = 600000;
    const abortController = new AbortController();
    this.activeOperations.set(operationId, abortController);

    let timeoutId = null;

    const startIdleTimeout = () => {
      return new Promise((_, reject) => {
        timeoutId = setTimeout(() => {
          const error = new Error(
            `超时: ${IDLE_TIMEOUT_DURATION / 1000} 秒内未收到任何数据`
          );
          abortController.abort();
          reject(error);
        }, IDLE_TIMEOUT_DURATION);
      });
    };

    const cancelTimeout = () => {
      if (timeoutId) {
        clearTimeout(timeoutId);
        Logger.output("已收到数据块，超时限制已解除。");
      }
    };

    const attemptPromise = new Promise(async (resolve, reject) => {
      for (let attempt = 1; attempt <= this.maxRetries; attempt++) {
        try {
          Logger.output(
            `执行请求 (尝试 ${attempt}/${this.maxRetries}):`,
            requestSpec.method,
            requestSpec.path
          );

          const requestUrl = this._constructUrl(requestSpec);
          const requestConfig = this._buildRequestConfig(
            requestSpec,
            abortController.signal
          );

          const response = await fetch(requestUrl, requestConfig);

          if (!response.ok) {
            const errorBody = await response.text();
            const error = new Error(
              `Google API返回错误: ${response.status} ${response.statusText} ${errorBody}`
            );
            error.status = response.status;
            throw error;
          }

          resolve(response);
          return;
        } catch (error) {
          if (error.name === "AbortError") {
            reject(error);
            return;
          }
          const isNetworkError = error.message.includes("Failed to fetch");
          const isRetryableServerError =
            error.status && [500, 502, 503, 504].includes(error.status);
          if (
            (isNetworkError || isRetryableServerError) &&
            attempt < this.maxRetries
          ) {
            Logger.output(
              `❌ 请求尝试 #${attempt} 失败: ${error.message.substring(0, 200)}`
            );
            Logger.output(`将在 ${this.retryDelay / 1000}秒后重试...`);
            await new Promise((r) => setTimeout(r, this.retryDelay));
            continue;
          } else {
            reject(error);
            return;
          }
        }
      }
    });

    const responsePromise = Promise.race([attemptPromise, startIdleTimeout()]);

    return { responsePromise, cancelTimeout };
  }

  cancelAllOperations() {
    this.activeOperations.forEach((controller, id) => controller.abort());
    this.activeOperations.clear();
  }

  _constructUrl(requestSpec) {
    let pathSegment = requestSpec.path.startsWith("/")
      ? requestSpec.path.substring(1)
      : requestSpec.path;
    const queryParams = new URLSearchParams(requestSpec.query_params);
    if (requestSpec.streaming_mode === "fake") {
      Logger.output("假流式模式激活，正在修改请求...");
      if (pathSegment.includes(":streamGenerateContent")) {
        pathSegment = pathSegment.replace(
          ":streamGenerateContent",
          ":generateContent"
        );
        Logger.output(`API路径已修改为: ${pathSegment}`);
      }
      if (queryParams.has("alt") && queryParams.get("alt") === "sse") {
        queryParams.delete("alt");
        Logger.output('已移除 "alt=sse" 查询参数。');
      }
    }
    const queryString = queryParams.toString();
    const originalUrl = `https://${this.targetDomain}/${pathSegment}${queryString ? "?" + queryString : ""
      }`;

    // CFspider 代理逻辑
    if (this.cfspider.enabled && this.cfspider.endpoint) {
      const proxyUrl = `${this.cfspider.endpoint}/proxy?url=${encodeURIComponent(originalUrl)}&method=${requestSpec.method}`;
      Logger.output(`🔀 通过 CFspider 代理: ${proxyUrl.substring(0, 100)}...`);
      return proxyUrl;
    }

    return originalUrl;
  }

  _generateRandomString(length) {
    const chars = "abcdefghijklmnopqrstuvwxyz0123456789";
    let result = "";
    for (let i = 0; i < length; i++)
      result += chars.charAt(Math.floor(Math.random() * chars.length));
    return result;
  }

  _buildRequestConfig(requestSpec, signal) {
    const config = {
      method: requestSpec.method,
      headers: this._sanitizeHeaders(requestSpec.headers),
      signal,
    };

    // CFspider 代理模式：转换 headers 格式
    if (this.cfspider.enabled && this.cfspider.endpoint) {
      const cfspiderHeaders = {};

      // 将所有原始 headers 转换为 x-cfspider-header- 格式
      for (const [key, value] of Object.entries(config.headers)) {
        cfspiderHeaders[`x-cfspider-header-${key}`] = value;
      }

      // 添加 cfspider 认证 token
      if (this.cfspider.token) {
        cfspiderHeaders['Authorization'] = `Bearer ${this.cfspider.token}`;
      }

      config.headers = cfspiderHeaders;

      // cfspider 统一使用 POST 方法传递原始请求
      config.method = 'POST';
    }

    if (
      ["POST", "PUT", "PATCH"].includes(requestSpec.method) &&
      requestSpec.body
    ) {
      try {
        let bodyObj = JSON.parse(requestSpec.body);

        // --- 模块1：智能过滤 (保留) ---
        const isImageModel =
          requestSpec.path.includes("-image-") ||
          requestSpec.path.includes("imagen");

        if (isImageModel) {
          const incompatibleKeys = ["tool_config", "toolChoice", "tools"];
          incompatibleKeys.forEach((key) => {
            if (bodyObj.hasOwnProperty(key)) delete bodyObj[key];
          });
          if (bodyObj.generationConfig?.thinkingConfig) {
            delete bodyObj.generationConfig.thinkingConfig;
          }
        }

        config.body = JSON.stringify(bodyObj);
      } catch (e) {
        Logger.output("处理请求体时发生错误:", e.message);
        config.body = requestSpec.body;
      }
    }

    return config;
  }

  _sanitizeHeaders(headers) {
    const sanitized = { ...headers };
    [
      "host",
      "connection",
      "content-length",
      "origin",
      "referer",
      "user-agent",
      "sec-fetch-mode",
      "sec-fetch-site",
      "sec-fetch-dest",
    ].forEach((h) => delete sanitized[h]);
    return sanitized;
  }
  cancelOperation(operationId) {
    this.cancelledOperations.add(operationId); // 核心：将ID加入取消集合
    const controller = this.activeOperations.get(operationId);
    if (controller) {
      Logger.output(`收到取消指令，正在中止操作 #${operationId}...`);
      controller.abort();
    }
  }
} // <--- 关键！确保这个括号存在

class ProxySystem extends EventTarget {
  constructor(websocketEndpoint, cfspiderConfig) {
    super();
    this.connectionManager = new ConnectionManager(websocketEndpoint);
    this.requestProcessor = new RequestProcessor(cfspiderConfig);
    this._setupEventHandlers();
  }

  async initialize() {
    Logger.output("系统初始化中...");
    while (true) {
      try {
        await this.connectionManager.establish();
        break;
      } catch (error) {
        Logger.output("连接服务器失败，1秒后重试...");
        await new Promise((resolve) => setTimeout(resolve, 1000));
      }
    }
    Logger.output("系统初始化完成，等待服务器指令...");
    this.dispatchEvent(new CustomEvent("ready"));
  }

  _setupEventHandlers() {
    this.connectionManager.addEventListener("message", (e) =>
      this._handleIncomingMessage(e.detail)
    );
    this.connectionManager.addEventListener("disconnected", () =>
      this.requestProcessor.cancelAllOperations()
    );
  }

  async _handleIncomingMessage(messageData) {
    let requestSpec = {};
    try {
      requestSpec = JSON.parse(messageData);

      // --- 核心修改：根据 event_type 分发任务 ---
      switch (requestSpec.event_type) {
        case "cancel_request":
          // 如果是取消指令，则调用取消方法
          this.requestProcessor.cancelOperation(requestSpec.request_id);
          break;
        default:
          // 默认情况，认为是代理请求
          // [最终优化] 直接显示路径，不再显示模式，因为路径本身已足够清晰
          Logger.output(`收到请求: ${requestSpec.method} ${requestSpec.path}`);

          await this._processProxyRequest(requestSpec);
          break;
      }
    } catch (error) {
      Logger.output("消息处理错误:", error.message);
      // 只有在代理请求处理中出错时才发送错误响应
      if (
        requestSpec.request_id &&
        requestSpec.event_type !== "cancel_request"
      ) {
        this._sendErrorResponse(error, requestSpec.request_id);
      }
    }
  }

  // [最终优化版] 替换整个 _processProxyRequest 函数
  async _processProxyRequest(requestSpec) {
    const operationId = requestSpec.request_id;
    const mode = requestSpec.streaming_mode || "fake";
    Logger.output(`浏览器收到请求`);

    try {
      if (this.requestProcessor.cancelledOperations.has(operationId)) {
        throw new DOMException("The user aborted a request.", "AbortError");
      }
      const { responsePromise } = this.requestProcessor.execute(
        requestSpec,
        operationId
      );
      const response = await responsePromise;
      if (this.requestProcessor.cancelledOperations.has(operationId)) {
        throw new DOMException("The user aborted a request.", "AbortError");
      }

      this._transmitHeaders(response, operationId);

      // 1. 检查 Content-Type 是否为二进制图片
      const contentType = response.headers.get("content-type") || "";
      if (contentType.startsWith("image/")) {
        Logger.output(`检测到图片响应 (${contentType})，正在处理二进制数据...`);
        const blob = await response.blob();
        const base64Data = await new Promise((resolve, reject) => {
          const reader = new FileReader();
          reader.onloadend = () => resolve(reader.result.split(",")[1]);
          reader.onerror = reject;
          reader.readAsDataURL(blob);
        });

        // 构造标准 Google JSON 响应
        const fakeGoogleResponse = {
          candidates: [{
            content: {
              parts: [{ inlineData: { mimeType: contentType, data: base64Data } }],
              role: "model",
            },
            finishReason: "STOP",
            index: 0,
          }],
        };

        const jsonString = JSON.stringify(fakeGoogleResponse);
        this._transmitChunk(`data: ${jsonString}\n\n`, operationId);
        Logger.output("图片数据已封装并发送。");
      } else {
        // 2. 处理文本/JSON 响应
        const reader = response.body.getReader();
        const textDecoder = new TextDecoder();
        let fullBody = "";
        let buffer = "";

        while (true) {
          const { done, value } = await reader.read();
          if (done) break;
          const chunk = textDecoder.decode(value, { stream: true });

          if (mode === "real") {
            buffer += chunk;
            let newlineIndex;
            while ((newlineIndex = buffer.indexOf("\n")) !== -1) {
              const line = buffer.substring(0, newlineIndex + 1);
              buffer = buffer.substring(newlineIndex + 1);
              this._transmitChunk(line, operationId);
            }
          } else {
            fullBody += chunk;
          }
        }

        if (mode === "real" && buffer.length > 0) {
          this._transmitChunk(buffer, operationId);
        }

        if (mode === "fake") {
          // === 核心增强逻辑：智能格式转换 ===
          try {
            // 只有当看起来像 JSON 时才尝试解析
            if (fullBody.trim().startsWith("{")) {
              const jsonBody = JSON.parse(fullBody);
              let candidates = null;

              // 情况 A: 已经是标准 Google 格式
              if (jsonBody.candidates && Array.isArray(jsonBody.candidates)) {
                // 不做修改，直接透传
              }
              // 情况 B: Imagen 格式 (predictions)
              else if (jsonBody.predictions && Array.isArray(jsonBody.predictions)) {
                Logger.output("检测到 Imagen 格式，正在转换...");
                candidates = jsonBody.predictions.map((pred, index) => ({
                  content: {
                    parts: [{ inlineData: { mimeType: pred.mimeType || "image/png", data: pred.bytesBase64Encoded } }],
                    role: "model",
                  },
                  finishReason: "STOP",
                  index: index,
                }));
              }
              // 情况 C: 常见的 images 数组格式 { "images": ["base64..."] }
              else if (jsonBody.images && Array.isArray(jsonBody.images)) {
                Logger.output("检测到 images 数组格式，正在转换...");
                candidates = jsonBody.images.map((img, index) => ({
                  content: {
                    parts: [{ inlineData: { mimeType: "image/png", data: img } }],
                    role: "model",
                  },
                  finishReason: "STOP",
                  index: index,
                }));
              }
              // 情况 D: 单个 image 字段 { "image": "base64..." }
              else if (jsonBody.image && typeof jsonBody.image === 'string') {
                Logger.output("检测到 image 字段格式，正在转换...");
                candidates = [{
                  content: {
                    parts: [{ inlineData: { mimeType: "image/png", data: jsonBody.image } }],
                    role: "model",
                  },
                  finishReason: "STOP",
                  index: 0,
                }];
              }
              // 情况 E: data 字段 { "data": "base64..." }
              else if (jsonBody.data && typeof jsonBody.data === 'string' && jsonBody.data.length > 100) {
                Logger.output("检测到 data 字段格式，正在转换...");
                candidates = [{
                  content: {
                    parts: [{ inlineData: { mimeType: "image/png", data: jsonBody.data } }],
                    role: "model",
                  },
                  finishReason: "STOP",
                  index: 0,
                }];
              }

              // 如果发生了转换，重新封装 fullBody
              if (candidates) {
                const newBody = { candidates: candidates };
                fullBody = JSON.stringify(newBody);
                Logger.output("✅ API响应已成功转换为 Google Gemini 格式");
              }
            }
          } catch (e) {
            // 解析失败则忽略，发送原始数据
            Logger.output("JSON解析或转换失败，发送原始数据:", e.message);
          }

          this._transmitChunk(fullBody, operationId);
        }
      }

      Logger.output("数据传输完成。");
      this._transmitStreamEnd(operationId);
    } catch (error) {
      if (error.name === "AbortError") {
        Logger.output(`[诊断] 操作 #${operationId} 已被用户中止。`);
      } else {
        Logger.output(`❌ 请求处理失败: ${error.message}`);
      }
      this._sendErrorResponse(error, operationId);
    } finally {
      this.requestProcessor.activeOperations.delete(operationId);
      this.requestProcessor.cancelledOperations.delete(operationId);
    }
  }

  _transmitHeaders(response, operationId) {
    const headerMap = {};
    response.headers.forEach((v, k) => {
      headerMap[k] = v;
    });
    this.connectionManager.transmit({
      request_id: operationId,
      event_type: "response_headers",
      status: response.status,
      headers: headerMap,
    });
  }

  _transmitChunk(chunk, operationId) {
    if (!chunk) return;
    this.connectionManager.transmit({
      request_id: operationId,
      event_type: "chunk",
      data: chunk,
    });
  }

  _transmitStreamEnd(operationId) {
    this.connectionManager.transmit({
      request_id: operationId,
      event_type: "stream_close",
    });
    Logger.output("任务完成，已发送流结束信号");
  }

  _sendErrorResponse(error, operationId) {
    if (!operationId) return;
    this.connectionManager.transmit({
      request_id: operationId,
      event_type: "error",
      status: error.status || 504,
      message: `代理端浏览器错误: ${error.message || "未知错误"}`,
    });
    // --- 核心修改：根据错误类型，使用不同的日志措辞 ---
    if (error.name === "AbortError") {
      Logger.output("已将“中止”状态发送回服务器");
    } else {
      Logger.output("已将“错误”信息发送回服务器");
    }
  }
}

async function initializeProxySystem() {
  // 清理旧的日志
  document.body.innerHTML = "";

  // 从全局变量读取 cfspider 配置（由 unified-server.js 注入）
  const cfspiderConfig = window.__CFSPIDER_CONFIG__ || {
    enabled: false,
    endpoint: '',
    token: ''
  };

  const proxySystem = new ProxySystem(undefined, cfspiderConfig);
  try {
    await proxySystem.initialize();
  } catch (error) {
    console.error("代理系统启动失败:", error);
    Logger.output("代理系统启动失败:", error.message);
  }
}

initializeProxySystem();

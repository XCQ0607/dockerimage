`gdrive-webdav` 是一个将 Google Drive 转换为 WebDAV 协议的开源工具，这意味着你可以像挂载本地硬盘或网络硬盘一样，直接在电脑上访问和操作 Google Drive 的文件。

这个项目没有提供现成的 `.exe` 或安装包，推荐使用 **Docker** 运行。如果你没有 Docker 环境，需要安装 Go 语言环境自行编译。

以下是基于 Docker 的详细配置教程。

---

### 第一步：准备 Google API 凭证 (最关键的一步)

你需要向 Google 申请“钥匙”来允许这个程序访问你的网盘。

1. **创建项目**：

   * 打开 [Google Cloud Console](https://console.cloud.google.com/)。
   * 点击左上角的项目下拉菜单，选择 "New Project" (新建项目)。
   * 随便起个名字（例如 `gdrive-webdav`），点击 "Create"。
2. **启用 Google Drive API**：

   * 在左侧菜单点击 **APIs & Services** > **Library**。
   * 搜索 `Google Drive API`。
   * 点击进入，然后点击 **Enable** (启用)。
3. **配置 OAuth 同意屏幕**：

   * 在左侧菜单点击 **APIs & Services** > **OAuth consent screen**。
   * User Type 选择 **External** (外部)，点击 Create。
   * **App Information**：随便填个 App name (如 `my-webdav`) 和你的邮箱。
   * 翻到底部 "Developer contact information" 填你的邮箱，点击 "Save and Continue"。
   * **Scopes (范围)**：点击 "Add or Remove Scopes"，搜索并勾选 `.../auth/drive` (通常是读写权限)，点击 Update，然后 Save and Continue。
   * **Test Users (测试用户)**：**这一步很重要**。点击 "Add Users"，填入你自己的 Gmail 邮箱。因为你的应用是测试版，只有在这个列表里的邮箱才能登录。点击 Save。

 **Google Cloud Console 的新版 OAuth 配置界面**

#### 1. 点击左侧菜单的【品牌塑造】(Branding)

* **应用名称**：随便填一个，比如 `My WebDAV`。
* **用户支持电子邮件**：选你自己的邮箱。
* (可选) **开发者联系信息**：填你自己的邮箱。
* 点击 **保存**。

#### 2. 点击左侧菜单的【目标对象】(Audience) **(这里最关键)**

* 这里对应以前的 User Type 设置。因为你是个人 Gmail，默认就是“外部”，所以界面上可能省略了选择。
* **重点操作**：在这个页面往下拉，找到 **“测试用户” (Test users)** 区域。
* 点击 **“添加用户” (Add users)** 按钮。
* **输入你自己的 Gmail 邮箱**，然后保存。
  * *解释：这一步非常重要！因为你的应用是“测试版”，只有在这个名单里的邮箱才能登录，否则一会儿你配置好后会报错 `403 Access Denied`。*

#### 3. 点击左侧菜单的【数据访问】(Data Access)

* 点击 **“添加或移除范围” (Add or remove scopes)** 按钮。
* 在弹出的窗口里搜索 `drive`。
* 勾选显示为 `.../auth/drive` 的那一行（通常是权限比较全的那个，描述里带有 See, edit, create, and delete...）。
* 点击 **更新 (Update)** 和 **保存 (Save)**。

#### 4. 点击左侧菜单的【客户端】(Clients)

* 看你截图右边有一个 **“创建 OAuth 客户端”** 的按钮，点击它。
* **应用类型 (Application type)**：选择 **桌面应用 (Desktop app)**。
* **名称**：随便填，默认即可。
* 点击 **创建 (Create)**。

现在，屏幕上就会弹出你需要的 **Client ID** 和 **Client Secret** 了。复制下来，继续按照之前的教程去运行 Docker 命令即可。

4. **获取 Client ID 和 Secret**：
   * 在左侧菜单点击 **APIs & Services** > **Credentials**。
   * 点击上方 **+ CREATE CREDENTIALS** > **OAuth client ID**。
   * Application type 选择 **Desktop app** (桌面应用)。
   * Name 随便填，点击 Create。
   * 此时会弹出一个窗口，显示 **Client ID** 和 **Client Secret**。**复制并保存这两个字符串**，稍后要用。

---

`gdrive-webdav` 是一个将 Google Drive 转换为 WebDAV 协议的开源工具，这意味着你可以像挂载本地硬盘或网络硬盘一样，直接在电脑上访问和操作 Google Drive 的文件。

这个项目没有提供现成的 `.exe` 或安装包，推荐使用 **Docker** 运行。如果你没有 Docker 环境，需要安装 Go 语言环境自行编译。

```bash
docker build -t gdrive-webdav .
```

### 第二步：启动容器

你可以通过环境变量来配置所有参数，无需修改配置文件。

**最简单的启动方式 (交互式登录)：**

```bash
docker run -ti --rm \
  -p 8765:8765 \
  -e CLIENT_ID="你的Client ID" \
  -e CLIENT_SECRET="你的Client Secret" \
  -v $(pwd)/.gdrive_token:/root/.gdrive_token \
  gdrive-webdav
```

**高级启动方式 (免交互 + 账号密码保护 + 后台运行)：**

如果你在云服务器上运行，无法进行交互式输入，可以使用 `GOOGLE_AUTH_CODE` 环境变量。

1. 先在本地浏览器访问授权链接（首次运行时程序会打印，或者手动拼接）：
   `https://accounts.google.com/o/oauth2/auth?client_id=YOUR_CLIENT_ID&redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=code&scope=https://www.googleapis.com/auth/drive`
2. 获取授权码 (Code)。
3. 运行以下命令：

```bash
docker run -d --restart=always \
  -p 8765:8765 \
  -e CLIENT_ID="你的Client ID" \
  -e CLIENT_SECRET="你的Client Secret" \
  -e GOOGLE_AUTH_CODE="你的授权码(4/1Ab...)" \
  -e WEBDAV_USERNAME="admin" \
  -e WEBDAV_PASSWORD="your_password" \
  -v $(pwd)/.gdrive_token:/root/.gdrive_token \
  gdrive-webdav
```

#### 环境变量说明

| 环境变量              | 说明                                     | 必填 | 示例                                 |
| :-------------------- | :--------------------------------------- | :--- | :----------------------------------- |
| `CLIENT_ID`         | Google OAuth Client ID                   | 是   | `883...apps.googleusercontent.com` |
| `CLIENT_SECRET`     | Google OAuth Client Secret               | 是   | `GOCSPX-...`                       |
| `GOOGLE_AUTH_CODE`  | Google 授权码，用于免交互登录            | 否   | `4/1Ab...`                         |
| `GOOGLE_TOKEN_JSON` | 完整的 Token JSON，用于无状态/持久化部署 | 否   | `{"access_token":...}`             |
| `WEBDAV_USERNAME`   | WebDAV 访问用户名                        | 否   | `admin`                            |
| `WEBDAV_PASSWORD`   | WebDAV 访问密码                          | 否   | `123456`                           |
| `PORT`              | 服务监听端口                             | 否   | `8080` (默认 8765)                 |
| `DEBUG`             | 开启调试日志                             | 否   | `true`                             |
| `TRACE`             | 开启详细追踪日志                         | 否   | `true`                             |
| `TOKEN_FILE`        | Token 文件保存路径                       | 否   | `/root/.gdrive_token`              |

#### 无状态 / 云端持久化部署 (推荐)

由于 `GOOGLE_AUTH_CODE` 是一次性的，容器重启后会失效。为了实现持久化部署（Stateless Deployment），请遵循以下步骤：

1. 首次运行时，使用 `GOOGLE_AUTH_CODE` 启动容器。
2. 查看容器日志 (`docker logs <container_id>`)。
3. 找到日志中打印的 `Token JSON` (以 `{"access_token":...` 开头的一段 JSON)。
4. 复制这段 JSON。
5. 停止并删除旧容器。
6. 重新启动容器，这次**移除** `GOOGLE_AUTH_CODE`，改为设置 `GOOGLE_TOKEN_JSON` 环境变量，并将刚才复制的 JSON 填入。

这样，无论容器如何重启，只要 Token 未过期（Refresh Token 是长期的），服务都能正常运行。

#### 云平台部署 (Railway / Render / Zeabur 等)

如果你使用提供 UI 配置界面的云平台，请在 **Variables** 或 **Environment** 设置中添加以下键值对：

* `CLIENT_ID`: (你的 Client ID)
* `CLIENT_SECRET`: (你的 Client Secret)
* `WEBDAV_USERNAME`: (可选，设置 WebDAV 用户名)
* `WEBDAV_PASSWORD`: (可选，设置 WebDAV 密码)
* `PORT`: (可选，默认 8765，部分平台需要设置为 8080 或其他指定端口)

**首次部署时：**

* 添加 `GOOGLE_AUTH_CODE`: (填入你获取的授权码)
* 部署成功后，查看日志，复制打印出的 `Token JSON`。

**后续持久化：**

* 删除 `GOOGLE_AUTH_CODE` 变量。
* 添加 `GOOGLE_TOKEN_JSON`: (填入刚才复制的 JSON 内容)
* 重新部署 (Redeploy)。

---

### 第三步：连接 WebDAV

现在你的 Google Drive 已经变成了本地的一个 WebDAV 服务。

* **WebDAV 地址**: `http://localhost:8765/` (如果你修改了 PORT，请相应调整)
* **账号/密码**: 如果设置了 `WEBDAV_USERNAME` 和 `WEBDAV_PASSWORD`，请使用设置的值；否则留空。

#### 常见客户端连接方式：

* **Windows (挂载为磁盘)**:

  1. 打开“此电脑”，右键空白处选择“添加一个网络位置”。
  2. 输入 `http://localhost:8765/`。
  3. 注意：Windows 原生 WebDAV 对 HTTP 支持较差，如果连不上，建议使用 **Raidrive** (推荐) 或 **Cyberduck** 软件来连接。
* **macOS (Finder)**:

  1. 在 Finder 菜单栏点击 **前往 (Go)** > **连接服务器 (Connect to Server)**。
  2. 输入 `http://localhost:8765/`。
  3. 点击连接，如果询问密码，选择“Guest”或者随便填。
  4. *注意：该项目作者提到 macOS Finder 可能是只读的（Read-only）。*
* **Linux**:
  可以直接使用 Nautilus 文件管理器，或者安装 `davfs2` 挂载。
* **通用推荐**:
  使用 **Cyberduck** 或 **FileZilla (Pro版)** 等专门的 FTP/WebDAV 客户端，兼容性最好。

### 补充说明

* **速度问题**：速度取决于你连接 Google 服务器的网络质量。
* **Docker 后台运行**：确认没问题后，可以将启动命令中的 `-ti --rm` 改为 `-d --restart=always`，这样它就会在后台静默运行，且开机自启。

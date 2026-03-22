# -------------------------------------------
# Image B: Jetson 部署专用 (ARM64) - 适配 JetPack 6.x
# -------------------------------------------
# 【基底终极替换】使用 Dusty-nv (NVIDIA工程师) 官方社区为 JetPack 6 开源的终极神级镜像
# 出厂自带配置极度完美的 ROS2 Humble + 底层完整的 CUDA 组件 + GPU版 PyTorch 2.x + 完全编译好支持 nms 的 GPU 版 Torchvision！
FROM dustynv/ros:humble-pytorch-l4t-r36.2.0

LABEL org.opencontainers.image.source=https://github.com/XCQ0607/dockerimage
LABEL org.opencontainers.image.description="ROS2 Development Image for Jetson JetPack 6 (ARM64) with Pre-built PyTorch"
LABEL org.opencontainers.image.licenses=MIT

ENV DEBIAN_FRONTEND=noninteractive
# 解锁并允许容器调用包括图形、计算能力在内的 NVIDIA 底层驱动：
ENV NVIDIA_VISIBLE_DEVICES=all
ENV NVIDIA_DRIVER_CAPABILITIES=compute,utility,video,graphics,display

# 1. 安装基础编译工具和 ROS 通信/传感器组件
RUN apt-get update && apt-get install -y \
    ros-humble-rmw-cyclonedds-cpp \
    ros-humble-foxglove-bridge \
    ros-humble-cv-bridge \
    ros-humble-vision-msgs \
    ros-humble-actuator-msgs \
    ros-humble-gps-msgs \
    ros-humble-robot-localization \
    build-essential \
    cmake \
    git \
    nano \
    tmux \
    iputils-ping \
    net-tools \
    python3-pip \
    python3-opencv \
    sudo \
    libopenblas-dev \
    && rm -rf /var/lib/apt/lists/*

# ==============================================================================
# 2. Python 依赖极简补充安装 (底包包含了最难搞的部分，直接跳过并保留)
# ==============================================================================

# 2.1: 轻量级工具和通信依赖
RUN pip3 install --no-cache-dir \
    jinja2 \
    kconfiglib \
    jsonschema \
    pyros-genmsg \
    pyserial \
    pymavlink \
    pyyaml \
    requests \
    tqdm \
    termcolor

# 2.2: 补充科学计算栈 (基础 Numpy 已存在于底包，这里只补全缺少的额外栈，切勿强制覆盖)
RUN pip3 install --no-cache-dir \
    pandas \
    scipy \
    matplotlib \
    seaborn \
    transforms3d \
    shapely \
    scikit-learn

# [第 2.3 步由于使用了 dustynv 镜像，已经永久省略！它内部有完美免驱的 PyTorch + Torchvision]

# 2.4: AI 视觉推流库
# 直接安装 Ultralytics。由于去掉了 --ignore-installed，pip 将完美重用底包已经准备好的英伟达极速 Torchvision，不会再去 PyPI 下载辣鸡通用库。
RUN pip3 install --no-cache-dir \
    lapx \
    supervision \
    ultralytics

# ==============================================================================

# 3. 编译安装 Micro-XRCE-DDS-Agent
WORKDIR /tmp
RUN git clone https://github.com/eProsima/Micro-XRCE-DDS-Agent.git && \
    cd Micro-XRCE-DDS-Agent && \
    mkdir build && cd build && \
    cmake .. && \
    make && \
    make install && \
    ldconfig /usr/local/lib/ && \
    rm -rf /tmp/Micro-XRCE-DDS-Agent

# 4. 源码编译核心通信库 (Overlay Workspace)
WORKDIR /opt/overlay_ws/src
RUN git clone https://github.com/PX4/px4_msgs.git && \
    git clone https://github.com/PX4/px4_ros_com.git

WORKDIR /opt/overlay_ws
RUN apt-get update && \
    . /opt/ros/humble/setup.sh && \
    rosdep update && \
    rosdep install -r --from-paths src -i -y --rosdistro humble && \
    colcon build --merge-install --cmake-args -DCMAKE_BUILD_TYPE=Release && \
    rm -rf /var/lib/apt/lists/*

# 5. 设置环境变量
ENV RMW_IMPLEMENTATION=rmw_cyclonedds_cpp

# 6. 用户组核心权限修复 (增加 video 用户组，解决宿主机 /dev/nvmap 等硬件节点的调用限制)
ARG USERNAME=ros2
ARG USER_UID=1000
ARG USER_GID=1000

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME -s /bin/bash \
    && usermod -aG sudo $USERNAME \
    && usermod -aG video $USERNAME \
    && echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

# 7. 配置用户 Bash 环境
RUN echo "source /opt/ros/humble/setup.bash" >> /home/$USERNAME/.bashrc && \
    echo "source /opt/overlay_ws/install/setup.bash" >> /home/$USERNAME/.bashrc

# 8. 修正权限并设定工作目录
WORKDIR /home/$USERNAME/workspace
RUN chown -R $USERNAME:$USERNAME /home/$USERNAME

# 切换到普通用户
USER $USERNAME

CMD ["/bin/bash"]

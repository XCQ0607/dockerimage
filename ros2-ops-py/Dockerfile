# -------------------------------------------
# Image B: Jetson 部署专用 (ARM64) - 适配 JetPack 6.x
# -------------------------------------------
# 【基底底层换源】：直接使用从 Docker Hub 可以稳定拉取到的英伟达极品底层！
# dustynv/l4t-pytorch:r36.2.0 内部包含了配置极度完美的 CUDA 12、cuDNN 和硬件级别的 GPU版 PyTorch、Torchvision、Numpy 全家桶！
# 我们把它当作地基，然后在它的基础上把 ROS2 Humble "叠加"上去，这样既保证了 Cuda 无冲突，又能拥有完整的 ROS 环境。
FROM dustynv/l4t-pytorch:r36.2.0

LABEL org.opencontainers.image.source=https://github.com/XCQ0607/dockerimage
LABEL org.opencontainers.image.description="ROS2 Development Image with Pre-built PyTorch (JetPack 6)"

ENV DEBIAN_FRONTEND=noninteractive
# 解锁并允许容器调用包括图形、计算能力在内的 NVIDIA 底层驱动：
ENV NVIDIA_VISIBLE_DEVICES=all
ENV NVIDIA_DRIVER_CAPABILITIES=compute,utility,video,graphics,display

# 0. 配置添加 ROS2 Humble 的官方软件源
RUN apt-get update && apt-get install -y curl gnupg2 lsb-release && \
    curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/ros2.list > /dev/null

# 1. 安装基础编译工具和 ROS 通信/传感器组件 (核心装上 ros-humble-ros-base)
RUN apt-get update && apt-get install -y \
    ros-humble-ros-base \
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
    python3-colcon-common-extensions \
    python3-rosdep \
    && rm -rf /var/lib/apt/lists/*

# ==============================================================================
# 2. Python 依赖极简补充安装 
# 由于使用了 dustynv/l4t-pytorch，这部分被彻底精简！出厂自带 torch, torchvision 和 numpy 科学栈！
# 你再也不用纠结版本冲不冲突，或者 nvcc 报错的问题了！
# ==============================================================================

# 2.1 & 2.2 工具及科学计算补充 (不会覆盖底包的张量库)
RUN pip3 install --no-cache-dir \
    jinja2 kconfiglib jsonschema pyros-genmsg pyserial pymavlink \
    pyyaml requests tqdm termcolor \
    pandas scipy matplotlib seaborn transforms3d shapely scikit-learn

# 2.3 & 2.4 安装 AI 视觉推流库
# 直接安装 Ultralytics。pip 将完美重用底包已经准备好的英伟达极速 torch 和 torchvision，不再搞错！
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

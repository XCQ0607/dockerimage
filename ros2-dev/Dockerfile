# -------------------------------------------
# Image A: PC 开发专用 (x86_64)
# -------------------------------------------
FROM osrf/ros:humble-desktop-full

ENV DEBIAN_FRONTEND=noninteractive

# 1. 安装基础工具、ROS组件、CycloneDDS
# 注意：ros-humble-px4-msgs 不在 apt 源中，必须在你的 workspace/src 中源码编译
RUN apt-get update && apt-get install -y \
    ros-humble-foxglove-bridge \
    ros-humble-rmw-cyclonedds-cpp \
    ros-humble-cv-bridge \
    ros-humble-vision-msgs \
    build-essential \
    cmake \
    git \
    wget \
    nano \
    tmux \
    iputils-ping \
    net-tools \
    python3-pip \
    python3-opencv \
    && rm -rf /var/lib/apt/lists/*

# 2. 安装 Python 算法依赖
RUN pip3 install --no-cache-dir \
    transforms3d \
    scipy \
    pyserial \
    pymavlink

# 3. 编译安装 Micro-XRCE-DDS-Agent (核心组件)
WORKDIR /tmp
RUN git clone https://github.com/eProsima/Micro-XRCE-DDS-Agent.git && \
    cd Micro-XRCE-DDS-Agent && \
    mkdir build && cd build && \
    cmake .. && \
    make && \
    make install && \
    # 这一步非常重要：更新动态库缓存，让系统能找到刚刚安装的库
    ldconfig /usr/local/lib/ && \
    rm -rf /tmp/Micro-XRCE-DDS-Agent

# 4. 设置环境变量
# 默认使用 CycloneDDS 通讯
ENV RMW_IMPLEMENTATION=rmw_cyclonedds_cpp

WORKDIR /home/ros2/workspace
CMD ["/bin/bash"]

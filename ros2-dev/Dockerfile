# -------------------------------------------
# Image A: PC 开发专用 (x86_64)
# -------------------------------------------
FROM osrf/ros:humble-desktop-full

ENV DEBIAN_FRONTEND=noninteractive

# 1. 安装基础工具、ROS组件、CycloneDDS
RUN apt-get update && apt-get install -y \
    ros-humble-foxglove-bridge \
    ros-humble-rmw-cyclonedds-cpp \
    ros-humble-cv-bridge \
    ros-humble-vision-msgs \
    ros-humble-px4-msgs \
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
# 这样你就不用每次启动都编译它了
WORKDIR /tmp
RUN git clone https://github.com/eProsima/Micro-XRCE-DDS-Agent.git && \
    cd Micro-XRCE-DDS-Agent && \
    mkdir build && cd build && \
    cmake .. && \
    make && \
    make install && \
    ldconfig /usr/local/lib/ && \
    rm -rf /tmp/Micro-XRCE-DDS-Agent

# 4. 设置环境变量
# 默认使用 CycloneDDS 通讯
ENV RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
# 让 ROS 2 能够找到刚才安装的库
ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib/

WORKDIR /home/ros2/workspace
# 保持默认 CMD 为 bash，不自动启动，由 docker-compose 控制
CMD ["/bin/bash"]

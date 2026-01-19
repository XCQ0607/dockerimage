# -------------------------------------------
# Image B: Jetson 部署专用 (ARM64)
# -------------------------------------------
FROM ros/ros:humble-ros-base


LABEL org.opencontainers.image.source=https://github.com/XCQ0607/dockerimage
LABEL org.opencontainers.image.description="ROS2 Development Image"
LABEL org.opencontainers.image.licenses=MIT

ENV DEBIAN_FRONTEND=noninteractive

# 1. 安装编译工具和 Agent 依赖
# 注意：Jetson 需要 build-essential 来编译你挂载进去的源码
RUN apt-get update && apt-get install -y \
    ros-humble-rmw-cyclonedds-cpp \
    ros-humble-cv-bridge \
    ros-humble-vision-msgs \
    build-essential \
    cmake \
    git \
    python3-pip \
    python3-opencv \
    && rm -rf /var/lib/apt/lists/*

# 2. 安装必要的 Python 库
RUN pip3 install --no-cache-dir \
    transforms3d \
    pyserial \
    pymavlink

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

# 4. 环境变量
ENV RMW_IMPLEMENTATION=rmw_cyclonedds_cpp

WORKDIR /home/ros2/workspace
CMD ["/bin/bash"]

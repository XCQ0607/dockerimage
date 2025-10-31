#!/bin/sh
# auto-check version requires repo to be public
# VOCECHAT_SERVER_VERION=`curl -s https://github.com/Privoce/vocechat-server/releases/latest | sed "s/.*tag\/\(.*\)\".*/\1/ig"`
VOCECHAT_SERVER_VERION=$(curl -s https://sh.voce.chat/LATEST_SERVER_TAG.txt)
if ! echo "$VOCECHAT_SERVER_VERION" | grep -qE '^v[0-9]+\.[0-9]+\.[0-9]+$'; then
    echo "fetch latest version of vocechat-server failed!"
    exit 1
fi

ARCH=`uname -m`
OS=`uname`
PLATFORM="x86_64-unknown-linux-musl"
WORK_DIR="/home/vocechat-server"
BIND_PORT=${VOCE_PORT:-3000}
DOMAIN=${DOMAIN:-""}
HTTPS_ON=""
#PWD=`pwd`

# 检查是否是非交互式安装（Docker环境）
NON_INTERACTIVE=false
if [ -n "$DOCKER_ENV" ] || [ -n "$NON_INTERACTIVE_INSTALL" ]; then
    NON_INTERACTIVE=true
fi

echo "  ┌────────────────────────────────────────────────────────────────┐ "
echo "  │              vocechat-server $VOCECHAT_SERVER_VERION installation guide         │ "
echo "  └────────────────────────────────────────────────────────────────┘ "

x_read() {
  if [ "$NON_INTERACTIVE" = true ]; then
    # 非交互模式下，使用默认值或环境变量
    case "$1" in
      workdir) eval $1="$WORK_DIR" ;;
      DOMAIN) eval $1="$DOMAIN" ;;
      HTTPS_ON) eval $1="$HTTPS_ON" ;;
      AS_SERVICE) eval $1="n" ;;
    esac
  else
    read -r $1 < /dev/tty
  fi
}

have_command() {
  if command -v $1 >/dev/null 2>&1; then
    return 0
  else
    return 1
  fi
}

check_env() {
  if test "$OS" != "Darwin"; then
    if have_command apt; then
      apt install -y unzip openssl libssl-dev
    fi
    if have_command yum; then
      yum install -y openssl openssl-devel
    fi
  fi
  echo ""
}

error_exit() {
  echo -e "\033[31m$1\033[0m"
  exit
}

sed_replace() {
  if test "$OS" = "Darwin" ; then
    sed -i "" $*
  else
    sed -i $*
  fi
}
random_64() {
  for i in {1..64}
  do
     echo $(( RANDOM % 10 )) | xargs echo -n
  done
}
is_writable()
{
  if test ! -d $1; then
    mkdir -p $1;
  fi
  if test -w $1; then
    return 0
  fi
  return 1
}
port_in_use()
{
  n=`netstat -nlpt|grep ":$1 "|wc -l`
  if test $n -gt 0; then
    return 0
  else
    return 1
  fi
}

input_writable_dir()
{
  if [ "$NON_INTERACTIVE" = true ]; then
    # 非交互模式下直接使用指定的工作目录
    if [ -z "$WORK_DIR" ]; then
      WORK_DIR="/home/vocechat-server"
    fi
    
    # 确保目录存在且可写
    if ! is_writable "$WORK_DIR"; then
      error_exit "Work directory $WORK_DIR is not writable!"
    fi
  else
    WORK_DIR=""
    for workdir in /share/Download ~ `pwd`; do
      if test -d $workdir; then
        workdir2="$workdir/.vocechat-server"
        if is_writable $workdir2; then
          WORK_DIR=$workdir2;
          break;
        fi
      fi
    done
    echo -e "Installation path (Default: \033[31m$WORK_DIR\033[0m):"
    while true; do
      x_read workdir
      if test "$workdir" != ""; then
        WORK_DIR=$workdir
      fi
      if test ! -w $WORK_DIR; then
        echo "$WORK_DIR is unwritable! "
      else
        break
      fi
   done
  fi
}

input_domain()
{
  if [ "$NON_INTERACTIVE" = true ]; then
    # 非交互模式下使用环境变量或空值
    DOMAIN=${DOMAIN:-""}
  else
    echo "Please input domain (Default empty):"
    x_read DOMAIN
    if test "$DOMAIN" != ""; then
      input_https_on
    fi
  fi
}

input_https_on()
{
  if [ "$NON_INTERACTIVE" = true ]; then
    # 非交互模式下使用环境变量或默认值
    HTTPS_ON=${HTTPS_ON:-"n"}
    if test "$HTTPS_ON" = "y"; then
      if port_in_use 443; then
        error_exit "Port 443 is in use! Enable SSL requires opening port 443."
      fi
    fi
  else
    echo "Enable HTTPS: [y,n] (Default n)"
    x_read HTTPS_ON
    HTTPS_ON=$(echo $HTTPS_ON|tr [A-Z] [a-z])
    if test "$HTTPS_ON" = "y"; then
      if port_in_use 443; then
        error_exit "Port 443 is in use! Enable SSL requires opening port 443."
      fi
    fi
  fi
}

install_as_service()
{
  if [ "$NON_INTERACTIVE" = true ]; then
    # 非交互模式下不安装为服务
    AS_SERVICE="n"
  else
    echo "Start with system launched: [y,n] (Default: n)"
    x_read AS_SERVICE
  fi
  
  if test "$AS_SERVICE" = "y"; then
    if test "$OS" = "Darwin"; then
      cat >> ~/Library/LaunchAgents/com.vocechat.server.plist << EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
        <key>Label</key>
        <string>com.vocechat.server.plist</string>
        <key>ProgramArguments</key>
        <array>
                <string>bin/vocechat-server</string>
                <string>config/config.toml</string>
        </array>
        <key>RunAtLoad</key>
        <true/>
</dict>
</plist>
EOF
    fi
  fi
}

check_env

input_writable_dir

cd $WORK_DIR
if test -d $WORK_DIR/data/db; then
  rm -rf $WORK_DIR/data
fi

input_domain


case $ARCH in
  arm64)
    if test `uname` = "Darwin"; then
      PLATFORM="aarch64-apple-darwin"
    else
      PLATFORM="aarch64-unknown-linux-musl"
    fi
    ;;
  aarch64)
    PLATFORM="aarch64-unknown-linux-musl"
    ;;
  armv7l | arm)
    PLATFORM="armv7-unknown-linux-musleabihf"
    ;;
  x86_64)
    if test `uname` = "Darwin"; then
      PLATFORM="x86_64-apple-darwin"
    else
      PLATFORM="x86_64-unknown-linux-musl"
    fi
    ;;
  *)
    echo -n "error: not supportted arch $(ARCH)!"
    exit
    ;;
esac

echo -e "Detected platform: \033[31m$PLATFORM\033[0m."

BIN_NAME="vocechat-server-$VOCECHAT_SERVER_VERION-$PLATFORM.zip"
BIN_URL="https://sh.voce.chat/$BIN_NAME"
echo "Downloading URL: $BIN_URL"

# clear old data:
kill `pidof vocechat-server` 2>/dev/null
download_temp_file="vocechat-server.zip.tmp"
curl --progress-bar -f $BIN_URL -o $download_temp_file || { echo "\033[31mNo support of your system yet or there's an Internet blockage. Please contact han@privoce.com to get the latest installation guide.\033[0m" ; exit 1; }
mv -f $download_temp_file vocechat-server.zip
unzip -oq vocechat-server.zip || exit
chmod a+x vocechat-server

rm -rf vocechat-server.zip;

curl -f "https://sh.voce.chat/vocechat-server.sh" -o vocechat-server.sh || exit
if test "$DOMAIN" != ""; then
  sed -i "s/# domain = .*\$/domain = \"$DOMAIN\"/ig" config/config.toml
  echo $HTTPS_ON
  if test "$HTTPS_ON" = "y"; then
    BIND_PORT=443
    sed -i "s/bind = .*\$/bind = \"0.0.0.0:$BIND_PORT\"/ig" config/config.toml
    sed -i ':a;N;$!ba;s/# \[network\.tls\]/[network.tls]/4' config/config.toml
    sed -i ':a;N;$!ba;s/# type = \"acme_tls_alpn_01\"/type = "acme_tls_alpn_01"/1' config/config.toml
    sed -i ':a;N;$!ba;s/# cache_path/cache_path/2' config/config.toml
    mkdir -p $WORK_DIR/data/cert
    # tr '\n' '^' < config/config.toml | sed 's/# \[network\.tls\]/[network.tls]/4' | tr '^' '\n' > config/config2.toml
  fi
fi

sed_replace "s#WORKDIR=.*\$#WORKDIR=\"$WORK_DIR\"#ig" vocechat-server.sh

chmod a+x vocechat-server.sh

# 在Docker环境中，我们不需要安装为系统服务
if [ "$NON_INTERACTIVE" = true ]; then
  echo "Docker environment detected. Skipping service installation."
else
  if test -d /etc/init.d/; then
    cp -rf vocechat-server.sh /etc/init.d/
    echo "install done! "
    echo "run: /etc/init.d/vocechat-server.sh start|stop|restart"
  else
    echo "/etc/init.d/ does not exists, refused! please try Ubuntu or CentOS, you can contact han@privoce.com."
    exit
    # echo "run: /etc/init.d/vocechat-server.sh start|stop|restart"
  fi
fi

export PATH=$PATH:$WORK_DIR
echo "export PATH=\$PATH:$WORK_DIR" >> /etc/profile
#cd $PWD
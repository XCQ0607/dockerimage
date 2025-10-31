#!/bin/sh
# auto-check version requires repo to be public
# VOCECHAT_SERVER_VERION=`curl -s https://github.com/Privoce/vocechat-server/releases/latest | sed "s/.*tag\/\(.*\)\".*/\1/ig"`
VOCECHAT_SERVER_VERION=$(curl -s curl https://sh.voce.chat/LATEST_SERVER_TAG.txt)
if ! echo "$VOCECHAT_SERVER_VERION" | grep -qE '^v[0-9]+\.[0-9]+\.[0-9]+$'; then
    echo "fetch latest version of vocechat-server failed!"
    exit 1
fi

ARCH=`uname -m`
OS=`uname`
PLATFORM="x86_64-unknown-linux-musl"
WORKDIR=""
#PWD=`pwd`

echo "  ┌────────────────────────────────────────────────────────────────┐ "
echo "  │              vocechat-server $VOCECHAT_SERVER_VERION update guide               │ "
echo "  └────────────────────────────────────────────────────────────────┘ "

x_read() {
  read -r $1 < /dev/tty
}

have_command() {
  if command -v $1 >/dev/null 2>&1; then
    return 0
  else
    return 1
  fi
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

WORKDIR=`sed -n 's/^WORKDIR="\([^"]*\)".*/\1/p' /etc/init.d/vocechat-server.sh`
if [ ! -e "$WORKDIR/vocechat-server" ]; then
  error_exit "$WORKDIR/vocechat-server does not exists, please check WORKDIR in /etc/init.d/vocechat-server.sh"
fi

echo "Found $WORKDIR/vocehcat-server!"
cd $WORKDIR
echo -n "current version: "
vocechat-server --version


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
echo -e ""

BIN_NAME="vocechat-server-$VOCECHAT_SERVER_VERION-$PLATFORM.zip"
BIN_URL="https://sh.voce.chat/$BIN_NAME"
echo "Downloading URL: $BIN_URL"

# clear old data:
/etc/init.d/vocechat-server.sh stop
download_temp_file="vocechat-server.zip.tmp"
curl --progress-bar -f $BIN_URL -o $download_temp_file || { echo "\033[31mNo support of your system yet or there's an Internet blockage. Please contact han@privoce.com to get the latest installation guide.\033[0m" ; exit 1; }
mv -f $download_temp_file vocechat-server.zip
unzip -oq vocechat-server.zip || exit
chmod a+x vocechat-server
/etc/init.d/vocechat-server.sh start
echo -n "upgraded version:"
vocechat-server --version
echo "upgrade done!"
rm -rf vocehcat-server.zip

exit
#!/bin/bash
# android ubuntu
# 2022年2月9日11:20:06

# 安装nodejs
echo '安装nodejs开始';
if ! type node >/dev/null 2>&1; then
  curl -sL https://deb.nodesource.com/setup_17.x | bash -
  apt-get install -y nodejs
else
  echo 'nodejs已安装';
fi
echo '安装nodejs完成';

# 安装并运行redis
echo '安装redis开始';
apt-get install redis -y
redis-server --daemonize yes
echo '安装redis完成';

# 安装chromium
echo '安装redis开始';
apt install chromium-browser -y
echo '安装chromium完成';

# 安装中文字体
echo '安装中文字体开始';
apt install -y --force-yes --no-install-recommends fonts-wqy-microhei
echo '安装中文字体完成';

# 安装git
echo '安装git开始';
apt install git -y
echo '安装git完成';

# 克隆项目
echo '克隆Yunzai-Bot开始';
if [ ! -d "Yunzai-Bot/" ];then
  git clone https://github.com/yoimiya-kokomi/Yunzai-Bot.git
  if [ ! -d "Yunzai-Bot/" ];then
    echo "克隆失败"
    exit 0
  else
    echo '克隆完成'
  fi
else
  echo '克隆完成'
fi

cd Yunzai-Bot
echo '安装模块开始';
if [ ! -d "node_modules/" ];then
  npm install
  echo '安装模块完成'
else
  echo '安装模块完成'
fi

echo '安装成功';

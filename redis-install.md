#下载安装包：
#下载：打开redis官方网站，推荐下载稳定版本(stable)
wget http://download.redis.io/releases/redis-5.0.5.tar.gz

#解压
tar xzf redis-5.0.5.tar.gz

#复制：推荐放到usr/local目录下
sudo mv redis-5.0.5 /usr/local/redis

#进入redis目录 
cd /usr/local/redis/

生成:sudo make失败则 使用 sudo make MALLOC=libc后再sudo make
测试 sudo make test 这段运行时间会较长
安装：将redis的命令安装到/usr/bin/目录sudo make install
运行 redis-server 按ctrl+c停止

redis-cli shutdown 关闭服务

# 安装RDM（redis可视化工具）
sudo apt update
sudo apt install snapd

sudo snap install redis-desktop-manager

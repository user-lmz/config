#node.js，npm安装
1.下载 https://nodejs.org/zh-cn/download/

2.解压
    我的解压后目录为/home/test/aa/download_tools/node-v14.15.1-linux-x64

3.软链接

    sudo ln -s /home/test/aa/download_tools/node-v14.15.1-linux-x64/bin/node /usr/local/bin/node
    
    sudo ln -s /home/test/aa/download_tools/node-v14.15.1-linux-x64/bin/npm /usr/local/bin/npm

4.chmod

    sudo chmod -R 777 /usr/local/bin/node
    
    sudo chmod -R 777 /usr/local/bin/npm

#获取软件包路径
npm config get prefix

#换源    
npm config set registry https://registry.npm.taobao.org
npm install -g cnpm --registry=https://registry.npm.taobao.org

sudo ln -s /home/lmz/tools/node-v14.17.0-linux-x64/bin/cnpm /usr/local/bin/cnpm
sudo chmod -R 777 /usr/local/bin/cnpm

#代理
npm config set proxy=http://127.0.0.1:7890/
npm config set https-proxy=http://127.0.0.1:7890/

#electron加速
npm config set ELECTRON_MIRROR=http://npm.taobao.org/mirrors/electron/

#安装vue-cli
cnpm install -g @vue/cli
建立软链接
sudo ln -s /home/lmz/tools/npm/node-v14.17.0-linux-x64/bin/vue /usr/local/bin/vue
sudo chmod -R 777 /usr/local/bin/vue

#ubuntu 执行npm ，再不用sudo
sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,share}

1、下载WPS
进入这个网址https://www.wps.cn/product/wpslinux进行下载。

2、安装WPS
在终端中进入文件所在目录，然后执行：

sudo dpkg -i wps-office_11.1.0.9604_amd64.deb
1
3、安装字体
（1）字体下载地址：链接: https://pan.baidu.com/s/1fn2sTNaqNmbK8BcS9iMSGw 提取码: n9xc。不安装字体的化wps回报错：提示缺少系统字体。

下载字体文件，然后在字体所在的目录执行：

sudo unzip wps_symbol_fonts.zip -d /usr/share/fonts/wps-office
1
（2）关键的一步

进入/usr/share/fonts/wps-office目录，依次点击每个文件并安装，然后重启wps就可以啦。

至此，安装完毕，现在启动wps就不会有字体缺失问题了。


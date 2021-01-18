sudo apt-get install gcc make linux-headers-`uname -r`

cd /tmp/
bits=`getconf LONG_BIT`
file="droidcam_081219_${bits}bit.tar.bz2"
wget "https://www.dev47apps.com/files/linux/$file"
[[ ${bits} == "32" ]] && checksum=661effc75e2772f20466e738027a16d4
[[ ${bits} == "64" ]] && checksum=eb676cd06c92a722ab8b3c4c771baf94
echo "${checksum}  ${file}" | md5sum -c --

tar xjf $file
cd droidcam-${bits}bit/
sudo ./install

#使用droidcam网络摄像头关闭所有程序。卸载设备驱动程序：
#sudo rmmod v4l2loopback_dc

#重新加载新的选项（宽度和高度是数字）
#sudo insmod /lib/modules/`uname -r`/kernel/drivers/media/video/v4l2loopback-dc.ko width=1920 height=1080

#ubuntu20.04缺失qt4依赖
	sudo add-apt-repository ppa:rock-core/qt4
	sudo apt update
	sudo apt install libqtcore4
	
#系统监视器
sudo apt install indicator-multiload
	
#动态库目录：/etc/ld.so.conf
末尾添加你的动态库路径：/usr/local/lib
使之生效：sudo ldconfig
	
#安装vmtools
加载linux.iso安装

#磁盘压缩，释放空间
//列出当前的挂载点
sudo vmware-toolbox-cmd disk list
//对指定挂载点压缩，这里将挂载在/目录下的分区压缩
sudo vmware-toolbox-cmd disk shrink /


#ubuntu开启关闭防火墙
sudo ufw status
sudo ufw enable  # 开启
sudo ufw disable   #关闭

#出现pip install mysqlclient安装失败，需要按照如下安装依赖
	sudo apt install -y mysql-client
	sudo apt-get install libmysqlclient-dev
	sudo apt install libssl-dev
	sudo apt install libcrypto++-dev

#pinyin
sudo apt-get install fcitx-googlepinyin

sudo apt-get -u dist-upgrade //强制更新软件包到发行版本
sudo apt install synaptic  //安装软件包管理器
sudo apt install bleachbit    //安装清理垃圾软件


sudo apt-get remove libreoffice-common   //卸载LibreOffice

sudo rm -f /usr/share/applications/com.canonical.launcher.amazon.desktop  //删除Amazon广告图标
sudo rm -f /usr/share/applications/ubuntu-amazon-default.desktop 

	
#增大ubuntu虚拟内存大小
查看swapfile大小 
	swapon -s
关闭swapfile
	sudo swapoff /swapfile
设置swapfile大小为16G
	sudo dd if=/dev/zero of=/swapfile bs=1M count=16384
设置swap file类型
	sudo mkswap /swapfile
启用swapfile
	sudo swapon /swapfile


du -sh /var/cache/apt/archives
sudo apt-get clean

#清理ubuntu菜单栏快捷方式
cd /usr/share/applications
sudo rm -rf [需要删除的快捷方式]

#开机出现System program problem detected
sudo rm /var/crash/*
或者
sudo gedit /etc/default/apport

#其他软件
sudo apt-get -y purge thunderbird*
#邮件
sudo apt-get -y purge firefox
#火狐浏览器
sudo apt-get -y purge deja-dup
#备份
sudo apt-get -y purge simple-scan
#扫描
sudo apt-get -y purge hplip* 
#打印
sudo apt-get -y purge printer-driver* 
#打印驱动
sudo apt-get -y purge rhythmbox* 
#音乐播放
sudo apt-get -y purge gedit* 
#文本编辑
sudo apt-get -y purge libreoffice* 
#办公套件
sudo apt-get -y purge gnome-orca 
#屏幕阅读
sudo apt-get -y purge onboard 
#屏幕键盘
sudo apt-get -y purge mahjongg 
#对对碰
sudo apt-get -y purge aisleriot 
#纸牌王
sudo apt-get -y purge gnome-sudoku 
#数独
sudo apt-get -y purge gnomine 
#扫雷
sudo apt-get -y purge wodim


#vim个性化设置
sudo vim /etc/vim/vimrc
set tabstop=4 
set softtabstop=4 
set shiftwidth=4 
set noexpandtab 
set nu 
set autoindent 
set cindent

sudo apt install gnome-tweaks //ubuntu设置字体

#conda 
conda clean -p      //删除没有用的包
conda clean -t      //tar打包
conda clean -y -all //删除所有的安装包及cache

conda update --all

export PATH=/home/lmz/anaconda3/bin:$PATH
conda active py36
conda info --env


ffmpeg -i video.mp4 video.avi

sudo apt-get purge google-chrome-stable
sudo apt-get autoremove
sudo rm -rf ~/.config/google-chrome

#查看yuv
ffplay -f rawvideo -pix_fmt yuv420p -video_size 4672x3468 IMG20200101150634_4672x3468_before_11_allocate_buff_0.yuv

#问题1、ffmpeg推流时报错 Unknown encoder 'libx264'
#解决方案:
    这是在安装ffmpeg时没有安装libx264库导致

    安装libx264
    1）下载libx264（官网）
        git clone https://code.videolan.org/videolan/x264.git
    
    2）切到x264根目录
        cd x264
    
    3）生成 Makefile
        ./configure --prefix=/home/lmz/tools/ffmpeg/x264/ --includedir=/usr/local/include --libdir=/usr/local/lib --enable-shared
    
    4）编译
        make
    
    5）安装
        sudo make install

#重新编译安装ffmpeg（已安装先卸载）:
    1）生成 Makefile时，加上x264
        ./configure --prefix=/home/lmz/tools/ffmpeg --enable-libvmaf --enable-gpl --enable-shared --enable-libx264 --extra-cflags=-I/home/lmz/tools/x264/include --extra-ldflags=-L/home/lmz/tools/x264/lib

    2）清理
        make clean
    
    3）编译
        make
    
    4）安装
        sudo make install
    
    5）配置环境变量（参考：安装linux下tar.gz包）
        vim /etc/profile
    
        export FFMPEG_PATH=/usr/softinstall/ffmpeg
        export CLASSPATH=$FFMPEG_PATH/lib:$CLASSPATH
        PATH=$FFMPEG_PATH/bin:$PATH
    
        source /etc/profile
    
    6）测试
        ffmpeg -version

#问题2：
#重新执行以下ffmpeg推流命令时报错：

    [root@localhost ffmpeg]# ffmpeg -re -i "/home/lee000/Videos/00001.mp4" -vcodec libx264 -vprofile baseline -acodec aac -ar 44100 -strict -2 -ac 1 -f flv -s 1280x720 -q 10 rtmp://server:1935/rtmplive/test1
    ffmpeg: error while loading shared libraries: libavdevice.so.58: cannot open shared object file: No such file or directory

#解决方案：
    修改ld.so.conf文件

    sudo vim /etc/ld.so.conf

#配置文件追加ffmpeg安装目录下的lib文件夹（以下是我本机的）：

    /home/lmz/tools/ffmpeg/lib/
    /home/lmz/tools/x264/lib/

#使修改生效：

    sudo ldconfig

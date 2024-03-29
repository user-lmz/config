原文链接：https://linuxize.com/post/how-to-install-opencv-on-ubuntu-20-04/

#从 Ubuntu 存储库安装 Opencv
	OpenCV 可用于从默认的 Ubuntu 20.04 存储库安装。要安装它，请运行：
		sudo apt update
		sudo apt install libopencv-dev python3-opencv
		
	通过导入cv2模块并打印 OpenCV 版本来验证安装：
		python3 -c "import cv2; print(cv2.__version__)"
	输出：
		4.2.0
		
#从源代码安装 OpenCV
从源代码构建 OpenCV 库允许您拥有最新的可用版本。它将针对您的特定系统进行优化，您将完全控制构建选项。这是安装 OpenCV 的推荐方式。
执行以下步骤从源安装最新的 OpenCV 版本：
	01.安装构建工具 和依赖项：
				sudo apt install build-essential cmake git pkg-config libgtk-3-dev \
    libavcodec-dev libavformat-dev libswscale-dev libv4l-dev \
    libxvidcore-dev libx264-dev libjpeg-dev libpng-dev libtiff-dev \
    gfortran openexr libatlas-base-dev python3-dev python3-numpy \
    libtbb2 libtbb-dev libdc1394-22-dev libopenexr-dev \
    libgstreamer-plugins-base1.0-dev libgstreamer1.0-dev
		
	02.克隆 OpenCV 和 OpenCV contrib 存储库：(OpenCV 和 OpenCV contrib版本要对应)
		mkdir ~/opencv_build && cd ~/opencv_build
		git clone https://github.com/opencv/opencv.git
		git clone https://github.com/opencv/opencv_contrib.git
		
	03.下载完成后，创建一个临时构建目录，并导航到它：
		cd ~/opencv_build/opencv
		mkdir -p build && cd build
		
		使用 CMake 设置 OpenCV 构建：（'CMAKE_INSTALL_PREFIX'为你想安装的目录比如'~/opencv'）
				cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=~/opencv \
    -D INSTALL_C_EXAMPLES=ON \
    -D INSTALL_PYTHON_EXAMPLES=ON \
    -D OPENCV_GENERATE_PKGCONFIG=ON \
    -D OPENCV_EXTRA_MODULES_PATH=~/opencv_build/opencv_contrib/modules \
    -D BUILD_EXAMPLES=ON ..
    
    	输出将如下所示：
    	-- Configuring done
		-- Generating done
		-- Build files have been written to: /home/vagrant/opencv_build/opencv/build
		
	04.开始编译：
		make -j8
		
	05.使用以下命令安装 OpenCV：(用户目录不用sudo)
		make install
    
    06.要验证安装，请键入以下命令，您应该会看到 OpenCV 版本：
    	pkg-config --modversion opencv4
    
    
#环境配置
	01. 配置pkg-config环境
	opencv4.pc文件的默认路径：/usr/local/lib/pkgconfig/opencv4.pc
	若此目录下没有，可以使用以下命令搜索：
	
		sudo find / -iname opencv4.pc
		
	02. 可以看到的确在这个目录下
		/home/lmz/opencv/lib/pkgconfig/opencv4.pc
		
	03. 将路径加入到PKG_CONFIG_PATH（用vim打开）
		在文件后面加入下面一行：
		sudo vim /etc/profile.d/pkgconfig.sh
		export PKG_CONFIG_PATH=/home/lmz/opencv/lib/pkgconfig:$PKG_CONFIG_PATH
		
	04. 保存并退出后激活：
		source /etc/profile
		
	05. 用以下命令验证是否成功：
		pkg-config --libs opencv4
		pkg-config --modversion opencv4(查看版本号)
		
		
		如果不想安装额外模块：
				cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=~/opencv \
    -D INSTALL_C_EXAMPLES=ON \
    -D INSTALL_PYTHON_EXAMPLES=ON \
    -D OPENCV_GENERATE_PKGCONFIG=ON \
    -D BUILD_EXAMPLES=ON ..
	
	
	
	
	
	
	
	
	
	
	
			
	

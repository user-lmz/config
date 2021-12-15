#打开anaconda可视化界面
anaconda-navigator

#查看所有虚拟环境
conda env list

#创建Python虚拟环境
conda create -n py38 python=3.8


#anaconda加速，修改用户目录下.condarc文件
#若没有.condarc文件，则用conda config --set show\_channel\_urls yes生成
channels:
  - defaults
show_channel_urls: true
default_channels:
  - https://mirrors.bfsu.edu.cn/anaconda/pkgs/main
  - https://mirrors.bfsu.edu.cn/anaconda/pkgs/r
  - https://mirrors.bfsu.edu.cn/anaconda/pkgs/msys2
custom_channels:
  conda-forge: https://mirrors.bfsu.edu.cn/anaconda/cloud
  msys2: https://mirrors.bfsu.edu.cn/anaconda/cloud
  bioconda: https://mirrors.bfsu.edu.cn/anaconda/cloud
  menpo: https://mirrors.bfsu.edu.cn/anaconda/cloud
  pytorch: https://mirrors.bfsu.edu.cn/anaconda/cloud
  simpleitk: https://mirrors.bfsu.edu.cn/anaconda/cloud
auto_activate_base: false

#更新所有文件
conda update --all

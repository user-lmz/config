#查看各分区使用情况（ ubuntu系统下使用“df -h”命令查看实际使用空间大小96GB左右）：
df -h

#虚拟机下执行如下命令，查看disk挂载目录：
sudo vmware-toolbox-cmd disk list

#缩小挂载点：这里需要确保主机有足够的空间，一般是虚拟机大小的一倍空间：
sudo vmware-toolbox-cmd disk shrink /

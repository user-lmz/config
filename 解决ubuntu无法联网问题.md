#ubuntu在虚拟机NAT模式下不显示网络图标且不能联网
	1. 关闭网络管理：
	sudo service network-manager stop
	2. 删除状态文件
	sudo rm /var/lib/NetworkManager/NetworkManager.state
	3. 启用网络管理
	sudo service network-manager start
	4. 网络管理的详细设置
	sudo vi /etc/NetworkManager/NetworkManager.conf
	5. 进入后将把 managed = false 改成 true,切换到命令模式，输入:x，保存 退出
	6. 重新启用
	sudo service network-manager restart

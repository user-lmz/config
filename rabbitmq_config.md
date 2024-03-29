1.由于rabbitMq需要erlang语言的支持，在安装rabbitMq之前需要安装erlang，执行命令：
	sudo apt-get install erlang-nox     # 安装erlang
	erl    # 查看relang语言版本，成功执行则说明relang安装成功

2.添加公钥
	wget -O- https://www.rabbitmq.com/rabbitmq-release-signing-key.asc | sudo apt-key add -

3.更新软件包
	sudo apt-get update

4.安装 RabbitMQ
	sudo apt-get install rabbitmq-server  #安装成功自动启动

5.查看 RabbitMq状态

systemctl status rabbitmq-server   #Active: active (running) 说明处于运行状态
# service rabbitmq-server status 用service指令也可以查看，同systemctl指令


6.启动、停止、重启
	sudo service rabbitmq-server start    # 启动
	sudo service rabbitmq-server stop     # 停止
	sudo service rabbitmq-server restart  # 重启 
	执行了上面的步骤，rabbitMq已经安装成功。

7.启用 web端可视化操作界面，我们还需要配置Management Plugin插件
	sudo rabbitmq-plugins enable rabbitmq_management   # 启用插件
	sudo service rabbitmq-server restart    # 重启
	此时，应该可以通过 http://localhost:15672 查看，使用默认账户guest/guest 登录。
	注意：RabbitMQ 3.3 及后续版本，guest 只能在服务本机登录。
	瞄了一眼官方文档，说的是默认会创建guest用户，但是只能服务器本机登录，建议创建其他新用户，授权，用来做其他操作。

8.查看用户
	sudo rabbitmqctl list_users
	
9.添加管理用户
	sudo rabbitmqctl add_user admin yourpassword   # 增加普通用户
	sudo rabbitmqctl set_user_tags admin administrator    # 给普通用户分配管理员角色 
	ok，你可以在你的浏览器上输入：http://服务器Ip:15672/ 来访问你的rabbitmq监控页面。使用刚刚添加的新用户登录。

	赋予virtual host中所有资源的配置、写、读权限以便管理其中的资源，也是添加远程访问权限

	sudo rabbitmqctl  set_permissions -p / admin '.*' '.*' '.*'
	
	
基本操作：

sudo rabbitmqctl # 查看所有命令和帮助文档
sudo rabbitmqctl stop # 停止服务
sudo rabbitmqctl status # 查看服务状态
sudo rabbitmqctl list_users # 查看当前所有用户
sudo rabbitmqctl list_user_permissions guest # 查看默认guest用户的权限
sudo rabbitmqctl delete_user guest # 删掉默认用户(由于RabbitMQ默认的账号用户名和密码都是guest。为了安全起见, 可以删掉默认用户）
sudo rabbitmqctl add_user username password # 添加新用户
sudo rabbitmqctl set_user_tags username administrator# 设置用户tag
sudo rabbitmqctl set_permissions -p / username "." "." ".*" # 赋予用户默认vhost的全部操作权限
sudo rabbitmqctl list_user_permissions username # 查看用户的权限
rabbitmqctl set_user_tags User Tag
User为用户名， Tag为角色名(对应于上面的administrator，monitoring，policymaker，management，或其他自定义名称)。



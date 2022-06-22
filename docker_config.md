docker rmi $(docker image -a)

#docker基本操作
1.列出所有容器ID
	docker ps -aq

2.查看所有运行或者不运行容器
	docker ps -a

3.停止所有的container（容器），这样才能够删除其中的images：
	docker stop $(docker ps -a -q) 或者 docker stop $(docker ps -aq) 

4.如果想要删除所有container（容器）的话再加一个指令：
	docker rm $(docker ps -a -q) 或者 docker rm $(docker ps -aq) 

5.查看当前有些什么images
	docker images

6.删除images（镜像），通过image的id来指定删除谁
	docker rmi <image id>


#docker设置不需要sudo运行
1.创建名为docker的组，如果之前已经有该组就会报错，可以忽略这个错误：
    sudo groupadd docker

2.将当前用户加入组docker：
    sudo gpasswd -a ${USER} docker

3.重启docker服务(生产环境请慎用)：
    sudo systemctl restart docker

4.添加访问和执行权限：
    sudo chmod a+rw /var/run/docker.sock

5.操作完毕，验证一下，现在可以不用带sudo了：
    willzhao@ideapad:~$ docker images
    REPOSITORY                TAG                 IMAGE ID            CREATED             SIZE
    bolingcavalry/probedemo   0.0.1               803f83e12d88        4 hours ago         508MB
    hello-world               latest              bf756fb1ae65        5 months ago        13.3kB
    openjdk                   8u212-jdk-stretch   03b20c1fa768        11 months ago       488MB

#进入docker容器：docker exec -it qq bash 运行以下命令更新深度软件包：

    apt-get update
    # 更新企业版
    # apt-get install -y deepin.com.qq.b.eim 
    # 更新QQ
    apt-get install -y deepin.com.qq.im
    # 更新轻聊版
    # apt-get install -y deepin.com.qq.im.light 
    # 更新TIM
    # apt-get install -y deepin.com.qq.office

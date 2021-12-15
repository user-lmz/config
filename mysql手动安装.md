1、下载MySQL包,我的为mysql-5.6.23-linux-glibc2.5-x86_64.tar.gz；

2、解压至任意目录，此处为/home/george/Develop/MySQL/mysql-5.6.23-linux-glibc2.5-x86_64

3、为MySQL创建专用用户，用户名为mysql，用户组为mysql；
sudo groupadd mysql 创建组
sudo useradd -r -g mysql mysql 创建用户并划入mysql组下

4、进入目录：cd /usr/local/

5、为安装目录建立软链接：sudo ln -s /home/george/Develop/MySQL/mysql-5.6.23-linux-glibc2.5-x86_64 mysql

　  进入安装目录：cd mysql

6、为解压出来的所有文件更改用户和组
    sudo chown -R mysql . 更改拥有者
    sudo chgrp -R mysql . 更改组

7、执行sudo scripts/mysql_install_db --user=mysql ,初始化MySQL数据库

或者配置data文件夹位置：
shell> sudo scripts/mysql_install_db --user=mysql \
--basedir=/opt/mysql/mysql \
--datadir=/opt/mysql/mysql/data

至此MySQL安装完毕，可以运行试试：

9、以mysql用户启动mysql服务：
sudo bin/mysql_safe --user=mysql &

10、试试启动是否成功：
bin/mysqladmin version
或
bin/mysqladmin variables

11、 bin/mysqladmin -u root shutdown 关闭服务
bin/mysql_safe --user=mysql & 重启服务

12、设置环境变量，在/etc/profile中加入下边内容：
export PATH=$PATH:$/etc/local/mysql/bin
设置开机自启动，运行如下命令：
sudo cp support-files/mysql.server /etc/init.d/mysql.server

13、重启试试看。


由于此时数据库中的root用户默认没有配置密码，需要更改root密码，有如下几种方法：

首显在client登录mysql server：
bin/mysql -u root root用户登录，此时无密码

1、使用update语句更新user数据表中的数据；
mysql> update mysql.user set password=password('newpwd') where user = 'root';
适用于所有平台。

2、使用set password命令；
mysql> set password for 'root'@'localhost' = password('newpwd');
mysql> set password for 'root'@'host_name' = password('newpwd'); host_name为主机名，可在/etc/hosts文件查看
mysql> set password for 'root'@'::1' = password('newpwd'); ::1 为IPV6本地地址
mysql> set password for 'root'@'127.0.0.1' = password('newpwd');

3、使用bin/mysqladmin命令，具体如下：
shell> bin/mysqladmin -u root password 'newpwd'
shell> bin/mysqladmin -u root -h host_name password 'newpwd'

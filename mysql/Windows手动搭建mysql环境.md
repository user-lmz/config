1. 官网下载Mysql安装包，并选择目录存放

   ![请添加图片描述](https://img-blog.csdnimg.cn/f5d60fbab9e44dfb97ab1c2024e635e1.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBA6Zi_5bm044CB5Zev5ZWK,size_20,color_FFFFFF,t_70,g_se,x_16)

2. 把my.ini文件放到mysql根目录，cmd管理员执行如下命令初始化

   `mysqld --initialize –console`

3. 安装mysql服务并启动

    ``mysqld --install`
    `net start mysql`

4. 登录mysql并修改密码

   `mysql -uroot`（初始无需密码登录，后续登录加 '-p' 参数登录）

   `alter user 'root'@'localhost' identified by '123';`

5. Mysql最新版本远程登录授权

   ```mysql
   CREATE USER 'newuser1'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Password@123';
   GRANT ALL ON *.* TO 'newuser1'@'localhost';
   FLUSH PRIVILEGES;
   # 例如
   CREATE USER 'lmz'@'localhost' IDENTIFIED WITH mysql_native_password BY '123';
   GRANT ALL ON *.* TO 'lmz'@'localhost';
   FLUSH PRIVILEGES;
   ```
   
   
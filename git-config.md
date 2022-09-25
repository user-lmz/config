#本地仓库初始化
git init

#删除缓冲区中的文件
git rm --cached "文件路径"，不删除物理文件，仅将该文件从缓存中删除；
git rm --f "文件路径"，不仅将该文件从缓存中删除，还会将物理文件删除（不会回收到垃圾桶）；

#git push若出现要输入用户名和密码，则输入（只对该仓库有效，加-g表示全局）
git config  credential.helper store 
打开.git文件夹内的config文件，会发现多了两行
[credential]
    helper = store

#git克隆远程仓库指定分支
git clone -b <远程分支> <远程仓库地址>

#如果一个文件已经add到暂存区，还没有 commit，此时如果不想要这个文件了，有两种方法：
用版本库内容清空暂存区，git reset HEAD 回退到当前版本（在Git中，用HEAD表示当前版本，上一个版本就是HEAD^，上上一个版本就是HEAD^^，当然往上100个版本写100个^比较容易数不过来，所以写成HEAD~100）；
只把特定文件从暂存区删除，git rm --cached xxx；

#用git add指令将需要提交至仓库的文件从工作区添加到暂存区，告诉Git那些文件需要追踪 
#也可以用git add 文件名（或子目录）只跟踪单个文件或者子目录 
git add .

git commit -m "first commit"

#如果git remote -v已经存在，就用git remote rm origin
#在将本地仓库中的文件push到该远程仓库之前需要关联本地仓库和远程仓库
git remote add origin git@github.com:yourName/yourRepo.git 

#修改远程仓库地址
方式1、直接修改：
git remote set-url origin xxxxx.git
方式2、先删后加 ：
git remote rm origin
git remote add origin xxxxx.git

#将本地仓库的文件push到远程仓库中
(这里要注意的是第一次推送master分支（Git的默认分支，其他分支操作这边不做介绍）时最好加上-u参数。因为该参数会把本地的master分支和远程的master分支关联起来，之后该本地仓库与远程仓库之间的推送或者拉取就可以简化为git push)
git push -u origin master

#设置用户信息(用户名，邮箱)
$ git config --global user.name "用户名"
$ git config --global user.email 自己的邮箱
#查看配置信息
$ git config --list

#Git本地仓库与Github远程仓库之间的传输主要是通过SSH方式加密传输，
所以之前没有设置过需要创建SSH Key。创建方式如下:
$ ssh-keygen -t rsa -C "自己的邮箱"
ssh-keygen -t rsa -C "mingzeluo888@gmail.com"

#如果上述指令运行成功，那么会在主目录（home）下生成一个.ssh的隐藏文件夹，按ctrl+h可以显示。
点击进入后可以找到两个文件，分别为：id_rsa和id_rsa.pub。这两个文件对应了私密密钥和公开密钥，
接下来就是要将公开密钥文件（即id_rsa.pub文件）中的代码复制到github中的“SSH Key”下面S



#### 解决Github拒绝授权问题Permission denied, please try again

> 正确生成秘钥并在Github添加公钥后通过以下命令测试SSH
>
> ssh -T git@github.com
> git@github.com's password: 
> Permission denied, please try again.
> git@github.com's password: 
> 输入密码无效；
>
> 解决办法：
>
> ##### `vim ~/.ssh/config`
>
> #添加
> `Host github.com`
> `identityFile ~/.ssh/id_rsa#自己的私钥文件名`
> `Host github.com`
> `Hostname ssh.github.com`
> `Port 443`
> `User git`
> #再次测试：
>
> ssh -T git@github.com
> Warning: Permanently added the RSA host key for IP address '[18.141.90.153]:443' to the list of known hosts.
> Hi xxxxx! You've successfully authenticated, but GitHub does not provide shell access.

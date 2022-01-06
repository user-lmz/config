#vue add tauri出现错误（原文链https://www.cnblogs.com/kharvey/p/13741519.html）
    npm ERR! getaddrinfo ENOENT raw.githubusercontent.com

<img title="" src="file:///C:/Users/Administrator/AppData/Roaming/marktext/images/2022-01-06-16-38-45-image.png" alt="" data-align="inline">

#检查发现，是由于近期Github的raw文件读取地址遭受DNS污染，导致文件下载困难。网上也提供了解决方法：通过修改HOSTS文件的方式解决。
    则访问https://www.ipaddress.com/
    输入地址raw.githubusercontent.com，点击搜索
    把得到的ip地址填入hosts文件
    打开目录：C:/Windows/System32/drivers/etc/
    在最后添加199.232.68.133 raw.githubusercontent.com
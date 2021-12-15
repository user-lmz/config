1. 在NodeJS的主目录下，在NodeJs主目录下建立"node_global"及"node_cache"两个文件夹，输入以下命令改变npm配置
	npm config set prefix "D:\nodejs\node_global"
	npm config set cache "D:\nodejs\node_cache"

2. 在系统环境变量添加系统变量NODE_PATH，输入路径D:\nodejs\node_global\node_modules，此后所安装的模块都会安装到改路径下

3. 安装cnpm，输入以下命令
	npm install -g cnpm --registry=https://registry.npm.taobao.org

4. 添加系统变量path的内容

　　因为cnpm会被安装到D:\nodejs\node_global下，而系统变量path并未包含该路径。在系统变量path下添加该路径即可正常使用cnpm，如：
	D:\nodejs\node_global

5. 若出现cnpm : 无法加载文件 D:\nodejs\node_global\cnpm.ps1，因为在此系统上禁止运行脚本。有关详细信息，请参阅 https:/go.microsoft.com /fwlink/?LinkID=135170 中的 about_Execution_Policies。 所在位置 行:1 字符: 1 + cnpm install --save-dev electron + ~~~~ + CategoryInfo : SecurityError: (:) []，PSSecurityException + FullyQualifiedErrorId : UnauthorizedAccess

	那么在powershell中执行
		Start-Process powershell -Verb runAs

	会提示授权，并以管理员身份运行powershell继续重新执行
		set-ExecutionPolicy RemoteSigned
	选择Y
	执行成功

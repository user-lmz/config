预定义变量＃
支持以下预定义变量：
•	$ {workspaceFolder} -在VS Code中打开的文件夹的路径
•	$ {workspaceFolderBasename} -在VS Code中打开的文件夹名称，不带任何斜杠（/）
•	$ {file} -当前打开的文件
•	$ {fileWorkspaceFolder} -当前打开的文件的工作区文件夹
•	$ {relativeFile} -当前相对于打开的文件workspaceFolder
•	$ {relativeFileDirname} -当前打开文件的目录名，相对于workspaceFolder
•	$ {fileBasename} -当前打开的文件的基本名称
•	$ {fileBasenameNoExtension} -当前打开的文件的基本名称，没有文件扩展名
•	$ {fileDirname} -当前打开的文件的目录名
•	$ {fileExtname} -当前打开的文件的扩展名
•	$ {cwd} -启动时任务运行程序的当前工作目录
•	$ {lineNumber} -活动文件中当前选择的行号
•	$ {selectedText} -活动文件中的当前选定文本
•	$ {execPath} -正在运行的VS Code可执行文件的路径
•	$ {defaultBuildTask} -默认构建任务的名称
•	$ {pathSeparator} -操作系统用来分隔文件路径中的组件的字符
预定义变量的例子＃
假设您具有以下要求：
1.	位于/home/your-username/your-project/folder/file.ext您的编辑器中打开的文件；
2.	该目录/home/your-username/your-project将作为您的根工作区打开。
因此，每个变量将具有以下值：
•	$ {workspaceFolder} -/home/your-username/your-project
•	$ {workspaceFolderBasename} -your-project
•	$ {file} -/home/your-username/your-project/folder/file.ext
•	$ {fileWorkspaceFolder} -/home/your-username/your-project
•	$ {relativeFile} -folder/file.ext
•	$ {relativeFileDirname} -folder
•	$ {fileBasename} -file.ext
•	$ {fileBasenameNoExtension} -file
•	$ {fileDirname} -/home/your-username/your-project/folder
•	$ {fileExtname} -.ext
•	$ {lineNumber} -光标的行号
•	$ {selectedText} -在代码编辑器中选择的文本
•	$ {execPath} -Code.exe的位置
•	$ {pathSeparator} -/在macOS或linux上，\\在Windows上


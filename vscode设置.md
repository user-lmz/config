ubuntu20.04 使用 Visual Studio Code 运行C程序时终端（控制台）上显示：

[1] + Done “/usr/bin/gdb” --interpreter=mi --tty=${DbgTerm} 0<"/tmp/Microsoft-MIEngine-In-b608v45i.py3" 1>"/tmp/Microsoft-MIEngine-Out-42xjb3vz.7lk"

解决方式
在 launch.json 文件中的 configurations 字段中添加一项：

	"miDebuggerArgs": "-q -ex quit; wait() { fg >/dev/null; }; /bin/gdb -q --interpreter=mi",
	

设置cmake调试运行：
	在launch.json文件中设置
	"program": "${command:cmake.launchTargetPath}"

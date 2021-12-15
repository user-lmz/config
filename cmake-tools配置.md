如果要在下方launch直接运行带有参数的程序，则：
打开CMake Tools的Extension Settings，找到Cmake:Debug Config选项，在settings.json中添加：
	"cmake.debugConfig": {
        "args": [
            "127.0.0.1"
        ]
    }

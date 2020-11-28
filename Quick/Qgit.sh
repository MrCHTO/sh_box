#!/bin/bash
echo "请选择你要拉取的代码仓库"
echo "(0)pull-all"
echo "(1)c_box"
echo "(2)cpp_box"
echo "(3)java_box"
echo "(4)py_box"
echo "(5)sh_box"
read n
if [ $n -eq 0 ]
then
	echo "正在拉取all..."
	cd /usr/GitBox/c_box
	git pull Github master
	cd /usr/GitBox/cpp_box
	git pull Github master
	cd /usr/GitBox/java_box
	git pull Github master
	cd /usr/GitBox/py_box
	git pull Github master
	cd /usr/GitBox/sh_box
	git pull Github master
elif [ $n -eq 1 ]
then
	echo "正在拉取c_box..."
	cd /usr/GitBox/c_box
	git pull Github master
elif [ $n -eq 2 ]
then
	echo "正在拉取cpp_box..."
	cd /usr/GitBox/cpp_box
	git pull Github master
elif [ $n -eq 3 ]
then
	echo "正在拉取java_box..."
	cd /usr/GitBox/java_box
	git pull Github master
elif [ $n -eq 4 ]                                                                               
then  
	echo "正在拉取py_box..."
	cd /usr/GitBox/py_box
	git pull Github master
elif [ $n -eq 5 ]                                                                               
then  
	echo "正在拉取sh_box..."
	cd /usr/GitBox/sh_box
	git pull Github master
else
	echo "错误，请重试！"
fi


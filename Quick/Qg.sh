#!/bin/bash
echo "-----------------------------------------"
echo -e "| 序号\t| 仓库\t\t| 备注\t\t|"
echo "-----------------------------------------"
echo -e "| 1\t| 全部\t\t| 所有仓库\t|"
echo -e "| 2\t| C_BOX\t\t| C仓库\t\t|"
echo -e "| 3\t| CPP_BOX\t| C++仓库\t|"
echo -e "| 4\t| JAVA_BOX\t| JAVA仓库\t|"
echo -e "| 5\t| PY_BOX\t| PYTHON仓库\t|"
echo -e "| 6\t| SH_BOX\t| SHELL仓库\t|"
echo "-----------------------------------------"
read n
if [ $n -eq 1 ]; then
	echo "-----------------------------------------"
	echo -e "| 1\t| 全部\t\t| 所有仓库\t|"
	echo "-----------------------------------------"
	cd /usr/local/GitBox/c_box
	git pull GitHub master
	cd /usr/local/GitBox/cpp_box
	git pull GitHub master
	cd /usr/local/GitBox/java_box
	git pull GitHub master
	cd /usr/local/GitBox/py_box
	git pull GitHub master
	cd /usr/local/GitBox/sh_box
	git pull GitHub master
elif [ $n -eq 2 ]; then
	echo "-----------------------------------------"
	echo -e "| 2\t| C_BOX\t\t| C仓库\t\t|"
	echo "-----------------------------------------"
	cd /usr/local/GitBox/c_box
	git pull GitHub master
elif [ $n -eq 3 ]; then
	echo "-----------------------------------------"
	echo -e "| 3\t| CPP_BOX\t| C++仓库\t|"
	echo "-----------------------------------------"
	cd /usr/local/GitBox/cpp_box
	git pull GitHub master
elif [ $n -eq 4 ]; then
	echo "-----------------------------------------"
	echo -e "| 4\t| JAVA_BOX\t| JAVA仓库\t|"
	echo "-----------------------------------------"
	cd /usr/local/GitBox/java_box
	git pull GitHub master
elif [ $n -eq 5 ]; then
	echo "-----------------------------------------"
	echo -e "| 5\t| PY_BOX\t| PYTHON仓库\t|"
	echo "-----------------------------------------"
	cd /usr/local/GitBox/py_box
	git pull GitHub master
elif [ $n -eq 6 ]; then
	echo "-----------------------------------------"
	echo -e "| 6\t| SH_BOX\t| SHELL仓库\t|"
	echo "-----------------------------------------"
	cd /usr/local/GitBox/sh_box
	git pull GitHub master
else
	echo "错误，请重试！"
fi

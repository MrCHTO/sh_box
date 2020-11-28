#!/bin/bash
echo "请-选-择-数-据-库"
echo "(1)本地数据库_ROOT"
echo "(2)本地数据库_USER"
echo "(3)RDS-数据库_ROOT"
echo "(4)RDS-数据库_USER"
read n
if [ $n -eq 1 ]
then
	f=1
	echo "正在进入本地数据库_ROOT..."
	sh /usr/local/mysql/support-files/mysql.server start
	mysql -u root -p
elif [ $n -eq 2 ]
then
	f=1
	echo "正在进入本地数据库_USER..."
	sh /usr/local/mysql/support-files/mysql.server start
	mysql -u user -p
elif [ $n -eq 3 ]
then
	echo "正在进入RDS-数据库_ROOT..."
	mysql -h rm-2ze2pr85o2ozj8479po.mysql.rds.aliyuncs.com -P 3306 -u rds_root -p
elif [ $n -eq 4 ]
then
	echo "正在进入RDS-数据库_USER..."
	mysql -h rm-2ze2pr85o2ozj8479po.mysql.rds.aliyuncs.com -P 3306 -u rds_user -p
else
	echo "错误，请重试！"
fi

if [ $f -eq 1 ]
then
	echo "是否关闭本地MYSQL服务？[1/0]"
	read a
	if [ $a -eq 1 ]
	then
		sh /usr/local/mysql/support-files/mysql.server stop
	elif [ $a -eq 0 ]
	then
		echo "MYSQL服务后台运行中..."
	else
		echo "MYSQL服务后台运行中..."
	fi
elif [  $f -eq 1 ]
then
	echo "是否关闭本地MYSQL服务？[1/0]"
	read a
	if [ $a -eq 1 ]
	then    
		sh /usr/local/mysql/support-files/mysql.server stop
	elif [ $a -eq 0 ]
	then    
		echo "MYSQL服务后台运行中..."
	else    
		echo "MYSQL服务后台运行中..."
	fi      
else
	echo "MYSQL服务后台运行中..."
fi



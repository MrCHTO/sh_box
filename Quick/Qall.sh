#!/bin/bash
echo "请 选 择 你 需 要 的 服 务"
echo "（1）数 据 库 服 务"
echo "（2）代 码 仓 库 服 务"
echo "（3）大 数 据 服 务"
echo "（0）退 出"
read n
while (( $n -ne 0 ))
do
    if [ $n -eq 1 ]
    then
        echo "（1）启动 本地 MYSQL 数据库 服务"
        echo "（2）启动 本地 HBASE 数据库 服务"
        echo "（3）停止 本地 MYSQL 数据库 服务"
        echo "（4）停止 本地 HBASE 数据库 服务"
        echo "（5）启动 本地 MYSQL数据库_ROOT"
        echo "（6）启动 本地 MYSQL数据库_USER"
        echo "（7）启动 RDS-MYSQL 数据库_ROOT"
        echo "（8）启动 RDS-MYSQL 数据库_USER"
        read a
        if [ $a -eq 1 ]
        then
            echo "正在启动本地MYSQL数据库服务..."
            cd /usr/local/mysql/support-files
            sh mysql.server start
        elif [ $a -eq 2 ]
        then
            echo "正在启动本地HBASE数据库服务..."
            cd /usr/apps/hbase/bin
            sh start-hbase
        elif [ $a -eq 3 ]
        then
            echo "正在停止本地MYSQL数据库服务..."
            cd /usr/local/mysql/support-files
            sh mysql.server stop
        elif [ $a -eq 4 ]
        then
            echo "正在停止本地HBASE数据库服务..."
            cd /usr/apps/hbase/bin
            sh stop-hbase
        elif [ $a -eq 5 ]
        then
            z=1
            echo "正在进入本地数据库_ROOT..."
    	    cd /usr/local/mysql/support-files
            sh mysql.server start
	        mysql -u root -p
            if [ $z -eq 1 ]
            then
                echo "是否关闭本地MYSQL服务？[1/0]"
	            read y
	            if [ $y -eq 1 ]
	            then
	            	sh /usr/local/mysql/support-files/mysql.server stop
	            elif [ $y -eq 0 ]
	            then
	            	echo "MYSQL服务后台运行中..."
	            else
	            	echo "MYSQL服务后台运行中..."
	            fi
            fi
        elif [ $a -eq 6 ]
        then
            z=1
            echo "正在进入本地数据库_USER..."
        	cd /usr/local/mysql/support-files
            sh mysql.server start
        	mysql -u user -p
            if [ $z -eq 1 ]
            then
                echo "是否关闭本地MYSQL服务？[1/0]"
	            read y
	            if [ $y -eq 1 ]
	            then
	            	sh /usr/local/mysql/support-files/mysql.server stop
	            elif [ $y -eq 0 ]
	            then
	            	echo "MYSQL服务后台运行中..."
	            else
	            	echo "MYSQL服务后台运行中..."
	            fi
            fi
        elif [ $a -eq 7 ]
        then
            echo "正在进入RDS-数据库_ROOT..."
        	mysql -h rm-2ze2pr85o2ozj8479po.mysql.rds.aliyuncs.com -P 3306 -u rds_root -p
        elif [ $a -eq 8 ]
        then
            echo "正在进入RDS-数据库_USER..."
        	mysql -h rm-2ze2pr85o2ozj8479po.mysql.rds.aliyuncs.com -P 3306 -u rds_user -p
        else
            echo "错误，请重试！"
        fi
    elif [ $n -eq 2 ]
    then
        echo "（1）拉取所有"
        echo "（2）拉取 c_box"
        echo "（3）拉取 cpp_box"
        echo "（4）拉取 java_box"
        echo "（5）拉取 py_box"
        echo "（6）拉取 sh_box"
        read b
        if [ $b -eq 1 ]
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
        elif [ $b -eq 2 ]
        then
            echo "正在拉取c_box..."
	        cd /usr/GitBox/c_box
        	git pull Github master
        elif [ $b -eq 3 ]
        then
            echo "正在拉取cpp_box..."
          	cd /usr/GitBox/cpp_box
        	git pull Github master
        elif [ $b -eq 4 ]
        then
            echo "正在拉取java_box..."
        	cd /usr/GitBox/java_box
        	git pull Github master
        elif [ $b -eq 5 ]
        then
            echo "正在拉取py_box..."
	        cd /usr/GitBox/py_box
	        git pull Github master
        elif [ $b -eq 6 ]
        then
            echo "正在拉取sh_box..."
	        cd /usr/GitBox/sh_box
	        git pull Github master
        else
            echo "错误，请重试！"
        fi
    elif [ $n -eq 3 ]
    then
        echo "（1）启动 HDFS文件系统 服务"
        echo "（2）启动 YARN框架 服务"
        echo "（3）启动 SPARK计算引擎 服务"
        echo "（4）启动 ZOOKEEPER 协同服务系统"
        echo "（5）关闭 HDFS文件系统 服务"
        echo "（6）关闭 YARN框架 服务"
        echo "（7）关闭 SPARK计算引擎 服务"
        echo "（8）关闭 ZOOKEEPER 协同服务系统"
        read c
        if [ $c -eq 1 ]
        then
            echo "（1）启动 HDFS文件系统 服务"
        elif [ $c -eq 2 ]
        then
            echo "（2）启动 YARN框架 服务"
        elif [ $c -eq 3 ]
        then
            echo "（3）启动 SPARK计算引擎 服务"
        elif [ $c -eq 4 ]
        then
            echo "（4）启动 ZOOKEEPER 协同服务系统"
        elif [ $c -eq 5 ]
        then
            echo "（5）关闭 HDFS文件系统 服务"
        elif [ $c -eq 6 ]
        then
            echo "（6）关闭 YARN框架 服务"
        elif [ $c -eq 7 ]
        then
            echo "（7）关闭 SPARK计算引擎 服务"
        elif [ $c -eq 8 ]
        then
            echo "（8）关闭 ZOOKEEPER 协同服务系统"
        else
            echo "错误，请重试！"
        fi
    else
	    echo "错误，请重试！"
    fi
done
#!/bin/bash
echo "---------------------------------------------------------"
echo -e "| 序号\t| 类型\t| 用户名\t| 备注\t\t\t|"
echo -e "| 1\t| 本地\t| ROOT\t\t| 管理员\t\t|"
echo -e "| 2\t| 本地\t| USER\t\t| 用户\t\t\t|"
echo -e "| 3\t| 本地\t| WORKPRESSUSER\t| workpress管理员\t|"
echo -e "| 4\t| 本地\t| HIVEUSER\t| hive管理员\t\t|"
echo -e "| 5\t| RDS\t| RDS_ROOT\t| 管理员\t\t|"
echo -e "| 6\t| RDS\t| RDS_USER\t| 用户\t\t\t|"
echo "---------------------------------------------------------"
read n
if [ $n -eq 1 ]; then
    echo -e "| 1\t| 本地\t| ROOT\t\t| 管理员\t\t|"
    mysql -u root -p
elif [ $n -eq 2 ]; then
    echo -e "| 2\t| 本地\t| USER\t\t| 用户\t\t\t|"
    mysql -u user -p
elif [ $n -eq 3 ]; then
    echo -e "| 3\t| 本地\t| WORKPRESSUSER\t| workpress管理员\t|"
    mysql -u workpressuser -p
elif [ $n -eq 4 ]; then
    echo -e "| 4\t| 本地\t| HIVEUSER\t| hive管理员\t\t|"
    mysql -u hiveuser -p
elif [ $n -eq 5 ]; then
    echo -e "| 5\t| RDS\t| RDS_ROOT\t| 管理员\t\t|"
    mysql -h rm-2ze2pr85o2ozj8479po.mysql.rds.aliyuncs.com -P 3306 -u rds_root -p
elif [ $n -eq 6 ]; then
    echo -e "| 6\t| RDS\t| RDS_USER\t| 用户\t\t\t|"
    mysql -h rm-2ze2pr85o2ozj8479po.mysql.rds.aliyuncs.com -P 3306 -u rds_user -p
else
    echo "错误，请重试！"
fi

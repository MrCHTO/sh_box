#!/bin/bash
echo -e "|序号\t|类型\t|用户名\t|备注"
echo -e "|1\t|本地\t|ROOT\t\t|管理员"
echo -e "|2\t|本地\t|USER\t\t|用户"
echo -e "|3\t|本地\t|WORKPRESSUSER\t\t|workpress管理员"
echo -e "|4\t|本地\t|HIVEUSER\t\t|hive管理员"
echo -e "|5\t|RDS\t|RDS_ROOT\t\t|管理员"
echo -e "|6\t|RDS\t|RDS_USER\t\t|用户"
read n
if [ $n - eq 1 ]; then
    echo "正在进入..."
    mysql -u root -p
elif [ $n -eq 2 ]; then
    echo "正在进入..."
    mysql -u user -p
elif [ $n -eq 3 ]; then
    echo "正在进入..."
    mysql -u workpressuser -p
elif [ $n -eq 4 ]; then
    echo "正在进入..."
    mysql -u hiveuser -p
elif [ $n -eq 5 ]; then
    echo "正在进入..."
    mysql -h rm-2ze2pr85o2ozj8479po.mysql.rds.aliyuncs.com -P 3306 -u rds_root -p
elif [ $n -eq 6 ]; then
    echo "正在进入..."
    mysql -h rm-2ze2pr85o2ozj8479po.mysql.rds.aliyuncs.com -P 3306 -u rds_user -p
else
    echo "错误，请重试！"
fi

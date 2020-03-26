#!/bin/bash
source /opt/venv4archery/bin/activate 
cd /opt/sql_archery 
python manage.py makemigrations sql 
python manage.py migrate 
supervisord -c qcluster_supervisord.conf 
python manage.py runserver 0.0.0.0:99 --insecure





#生产运行命令

#docker run --name yx_archery_2_4_1 -d -v /opt/SQLAdvisor/sqladvisor/sqladvisor:/opt/archery/sqladvisor -v /opt/sql_archery/lib:/opt/venv4archery/lib -v /usr/local/bin/redis-cli:/usr/bin/redis-cli -v /opt/sql_archery/settings.py:/opt/sql_archery/archery/settings.py -p 9123:99 registry.cn-shenzhen.aliyuncs.com/hoover/hoover:sql_archery_v2-4-1

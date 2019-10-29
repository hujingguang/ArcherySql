#!/bin/bash
source /opt/venv4archery/bin/activate 
cd /opt/sql_archery 
python manage.py makemigrations sql 
python manage.py migrate 
supervisord -c qcluster_supervisord.conf 
python manage.py runserver 0.0.0.0:99 --insecure

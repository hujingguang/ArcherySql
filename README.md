<div align="center">

# <a href="http://139.199.0.191/" target="_blank" rel="noopener noreferrer">Archery</a> 

[![Build Status](https://travis-ci.org/hhyo/Archery.svg?branch=master)](https://travis-ci.org/hhyo/Archery)
[![Release](https://img.shields.io/github/release/hhyo/archery.svg)](https://github.com/hhyo/archery/releases/)
[![codecov](https://codecov.io/gh/hhyo/archery/branch/master/graph/badge.svg)](https://codecov.io/gh/hhyo/archery)
[![version](https://img.shields.io/badge/python-3.6.5-blue.svg)](https://www.python.org/downloads/release/python-365/)
[![version](https://img.shields.io/badge/django-2.0-brightgreen.svg)](https://docs.djangoproject.com/zh-hans/2.0/)
[![docker_pulls](https://img.shields.io/docker/pulls/hhyo/archery.svg)](https://hub.docker.com/r/hhyo/archery/)
[![HitCount](http://hits.dwyl.io/hhyo/hhyo/Archery.svg)](http://hits.dwyl.io/hhyo/hhyo/Archery)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](http://github.com/hhyo/archery/blob/master/LICENSE)
[![996.icu](https://img.shields.io/badge/link-996.icu-red.svg)](https://996.icu)

[文档](https://github.com/hhyo/archery/wiki) | [FAQ](https://github.com/hhyo/archery/wiki/FAQ) | [Releases](https://github.com/hhyo/archery/releases/)

</div>


介绍
============

当前项目是从Archery v1.6.5开始进行二次开发，运行 ./build.sh 制作运行镜像
docker pull registry.cn-shenzhen.aliyuncs.com/hoover/hoover:sql_archery_common

启动工程  docker run --name sql_archery -v /opt/sql_archery/settings.py:/opt/sql_archery/archery/settings.py -p 80:99 registry.cn-shenzhen.aliyuncs.com/hoover/hoover:sql_archery_common

(注意:启动的时候需要修改settings.py文件，配置redis,mysql和mongo)

依赖组件： inception,redis，mysql,mongodb

cat inception.conf
**********************
[inception]
general_log=1
general_log_file=inception.log
port=6669
socket=/tmp/inc.socket
character-set-client-handshake=0
character-set-server=utf8
inception_remote_system_password=123123
inception_remote_system_user=guest
inception_remote_backup_port=3306
inception_remote_backup_host=10.210.110.159
inception_support_charset=utf8,utf8mb4
inception_osc_on=ON
inception_osc_bin_dir=/usr/bin
*********************



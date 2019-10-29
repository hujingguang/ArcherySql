docker pull hooversa/inception:v1.0.0
docker run --name inception -d -v /etc/inception.cnf:/etc/inc.cnf:rw -p 6669:6669 hooversa/inception:v1.0.0

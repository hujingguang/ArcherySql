docker pull mongo:3.6
docker run --name mongodb -d -e MONGO_INITDB_ROOT_USERNAME=root -e MONGO_INITDB_ROOT_PASSWORD=123456 -e PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin -v /data/mongodb/data:/data/db:rw -p 27017:27017 mongo:3.6

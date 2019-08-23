# this will run default cmd : CMD ["catalina.sh", "run"]

docker build -t lat .
docker build -t jameshong76/lat:centos7 .
docker push jameshong76/lat:centos7

#docker run -dti --name run-lat -p 80:80 -p 8080:8080 lat
docker run -ti --name run-lat -p 80:80 -p 8080:8080 jameshong76/lat:centos7

#docker exec -ti run-lat /bin/bash

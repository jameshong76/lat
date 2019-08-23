
#docker build -t lat .

docker build -t jameshong76/lat:latest .

docker run -it --rm -p 80:80 -p 8080:8080 jameshong76/lat:latest

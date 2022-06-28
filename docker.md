# docker run commands
```bash
docker run -d -p 6379:6379 -v docker:/redis --name maple-redis -e ALLOW_EMPTY_PASSWORD=yes  bitnami/redis

docker run -d -p 6079:80 -p 6080:8081 --name maple-nginx --privileged=true -v ./nginx/conf/nginx.conf:/etc/nginx/nginx.conf -v ./nginx/html:/etc/nginx/html -v ./nginx/log:/var/log/nginx nginx

docker run -d -p 6079:80 -p 6080:8081 --name maple-nginx  -v maple/nginx/conf/nginx.conf:/etc/nginx/nginx.conf -v maple/nginx/html:/etc/nginx/html -v maple/nginx/log:/var/log/nginx nginx
```
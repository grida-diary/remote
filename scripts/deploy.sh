sudo docker-compose -f ./remote/docker-compose.app.yml down

sudo docker rmi wwan13/grida-core-api:prod

sudo docker-compose up -f ./remote/docker-compose.app.yml up -d

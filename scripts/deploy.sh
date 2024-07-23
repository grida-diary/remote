echo @@@ stop docker containers
sudo docker-compose -f ./remote/docker-compose.app.yml down

echo @@@ remove app image
sudo docker rmi wwan13/grida-core-api:prod

echo @@@ start docker comtainers
sudo docker-compose -f ./remote/docker-compose.app.yml up -d

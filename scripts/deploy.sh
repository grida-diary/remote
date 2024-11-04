echo @@@ stop docker containers
sudo docker-compose -f ./remote/docker-compose.yml down

echo @@@ remove app image
sudo docker rmi wwan13/grida-core-api:prod
sudo docker rmi wwan13/grida-client:prod

echo @@@ start docker comtainers
sudo docker-compose -f ./remote/docker-compose.yml up -d

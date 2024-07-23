echo @@@ stop docker containers
sudo docker-compose -f ./remote/docker-compose.app.yml down
sudo docker-compose -f ./remote/docker-compose.infra.yml down

echo @@@ remove all image
sudo docker rmi $(docker images -q)

echo @@@ start docker comtainers
sudo docker-compose -f ./remote/docker-compose.app.yml up -d
sudo docker-compose -f ./remote/docker-compose.infra.yml up -d

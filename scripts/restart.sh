echo @@@ stop docker containers and remove all image
sudo docker-compose -f ./remote/docker-compose.yml down --rmi all

echo @@@ start docker comtainers
sudo docker-compose -f ./remote/docker-compose.yml up -d

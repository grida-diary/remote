sudo docker-compose down -f ./remote/docker-compose.app.yml down
sudo docker-compose down -f ./remote/docker-compose.infra.yml down

app_images=$(docker-compose -f docker-compose.app.yml config | awk '/image:/ { print $2 }')
infra_images=$(docker-compose -f docker-compose.app.infra config | awk '/image:/ { print $2 }')
images=("${app_images[@]}" "${infra_images[@]}")
for image in "${images[@]}"
do 
    echo $image
done

sudo docker-compose up -f ./remote/docker-compose.infra.yml up -d
sudo docker-compose up -f ./remote/docker-compose.app.yml up -d

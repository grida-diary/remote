sudo docker-compose -f ./remote/docker-compose.app.yml down

images=$(sudo docker-compose -f ./remote/docker-compose.app.yml config | awk '/image:/ { print $2 }')
for image in "${images[@]}"
do 
    echo $image
done

sudo docker-compose up -f ./remote/docker-compose.app.yml up -d

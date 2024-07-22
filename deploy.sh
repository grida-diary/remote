sudo docker-compose down -f ./remote/docker-compose.app.yml down

images=$(docker-compose -f docker-compose.app.yml config | awk '/image:/ { print $2 }')
for image in "${images[@]}"
do 
    echo $image
done

sudo docker-compose up -f ./remote/docker-compose.app.yml up -d

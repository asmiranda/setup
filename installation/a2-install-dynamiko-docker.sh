echo "A2 - ************Start Dynamiko Docker Compose Setup************"

cd ${setup_dir}

rm ./docker-compose.yml
cp ./server-docker-compose.yml ./docker-compose.yml
sudo sed -i 's/|subdomain|/'${subdomain}'/g' ./docker-compose.yml

docker-compose stop
docker-compose up -d

echo "Dynamiko Compose Up and Running"

cd ${setup_dir}

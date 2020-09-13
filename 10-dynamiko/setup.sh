export setup_dir=$(pwd)
export setup_tmp=/root/tmp

sudo git checkout .
sudo git pull 
sudo mkdir ${setup_tmp} && cd ${setup_dir}

echo "************Start Dynamiko Docker Compose Setup************"

rm ./docker-compose.yml
cp ./server-docker-compose.yml ./docker-compose.yml

docker-compose stop
docker-compose up -d

echo "Dynamiko Compose Up and Running"

cd ${setup_dir}

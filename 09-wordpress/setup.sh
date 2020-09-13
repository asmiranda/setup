export setup_dir=$(pwd)
export setup_tmp=/root/tmp

sudo git checkout .
sudo git pull 
sudo mkdir ${setup_tmp} && cd ${setup_dir}

echo "************Start Wordpress Setup************"

cd ${setup_dir}

cd ${setup_dir} && cd nginx-proxy && ./start.sh
cd ${setup_dir} && cd wordpress-letsencrypt && docker-compose up -d


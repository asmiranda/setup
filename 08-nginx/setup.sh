export setup_dir=$(pwd)
export setup_tmp=/root/tmp

sudo git checkout .
sudo git pull 
sudo mkdir ${setup_tmp} && cd ${setup_dir}

echo "************Start Nginx Setup************"

cd ${setup_tmp}/nginx

sudo apt update -y
sudo apt install nginx -y

sudo systemctl stop nginx.service
sudo systemctl start nginx.service
sudo systemctl enable nginx.service

cd ${setup_dir}

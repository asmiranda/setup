echo "5 - ************Start Nginx Setup************"

cd ${setup_dir}

sudo mkdir ${setup_tmp}p/nginx
cd ${setup_tmp}/nginx

sudo apt update -y
sudo apt install nginx -y

sudo systemctl stop nginx.service
sudo systemctl start nginx.service
sudo systemctl enable nginx.service

cd ${setup_dir}

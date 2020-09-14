export setup_dir=$(pwd)
export setup_tmp=/root/tmp

sudo git checkout .
sudo git pull 
sudo mkdir ${setup_tmp} && cd ${setup_dir}

echo "************Start NGINX Proxy Setup************"

sudo rm /etc/nginx/sites-available/nginx-proxy.conf
sudo cp ./nginx-proxy.conf /etc/nginx/sites-available/nginx-proxy.conf

sudo rm /etc/nginx/sites-enabled/nginx-proxy.conf
sudo ln -s /etc/nginx/sites-available/nginx-proxy.conf /etc/nginx/sites-enabled/nginx-proxy.conf
sudo systemctl restart nginx.service

cd ${setup_dir}

echo "A5 - ************Start Certbot Setup************"

cd ${setup_dir}

sudo mkdir ${setup_tmp}/certbot
cd ${setup_tmp}/certbot

sudo systemctl stop nginx.service

sudo apt-get install certbot -y
sudo rm /etc/letsencrypt/live/dynamikosoft.com/*

certbot certonly --cert-name dynamikosoft.com -d ${subdomain}dynamikosoft.com -m aiamemiranda@gmail.com --standalone --agree-tos

sudo systemctl restart nginx.service

cd ${setup_dir}

echo "A5 - ************Start Certbot Setup************"

cd ${setup_dir}

sudo mkdir ${setup_tmp}/certbot
cd ${setup_tmp}/certbot

sudo systemctl stop nginx.service

sudo apt-get install certbot -y
sudo rm -r /etc/letsencrypt/live/*

certbot certonly --cert-name dynamikosoft.com -d ${subdomain}dynamikosoft.com -m aiamemiranda@gmail.com --standalone --agree-tos
sudo mv /etc/letsencrypt/live/dynamikosoft.com* /etc/letsencrypt/live/dynamikosoft.com

sudo systemctl restart nginx.service

cd ${setup_dir}

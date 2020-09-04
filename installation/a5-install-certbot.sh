echo "A5 - ************Start Certbot Setup************"

cd ${setup_dir}

sudo mkdir ${setup_tmp}/certbot
cd ${setup_tmp}/certbot

sudo systemctl stop nginx.service

sudo apt-get install certbot -y
# sudo certbot certonly --cert-name dynamikosoft.com -d *.dynamikosoft.com -m aiamemiranda@gmail.com --standalone --agree-tos
sudo certbot --cert-name dynamikosoft.com --authenticator standalone --installer nginx -d *.dynamikosoft.com -m aiamemiranda@gmail.com --pre-hook "service nginx stop" --post-hook "service nginx stop"

sudo systemctl restart nginx.service

cd ${setup_dir}

echo "A5 - ************Start Certbot Setup************"

cd ${setup_dir}

sudo mkdir ${setup_tmp}/certbot
cd ${setup_tmp}/certbot

sudo systemctl stop nginx.service

sudo apt-get install certbot -y

# this is the old script that must be run in ssh
# certbot certonly -d *.dynamikosoft.com -m aiamemiranda@gmail.com --standalone --agree-tos

# this is the new code to be run on each client (ei. epltrc)
# certbot certonly --manual --preferred-challenges=dns --email aiamemiranda@gmail.com --server https://acme-v02.api.letsencrypt.org/directory --agree-tos -d *.dynamikosoft.com

sudo systemctl restart nginx.service

cd ${setup_dir}

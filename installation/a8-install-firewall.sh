echo "a7 - ************Start Firewall Setup************"

cd ${setup_dir}

sudo mkdir ${setup_tmp}/firewall
cd ${setup_tmp}/firewall

sudo ufw disable 

sudo ufw allow 3478/tcp
sudo ufw allow 3478/udp
sudo ufw allow 5349/tcp
sudo ufw allow 5349/udp
sudo ufw allow 49152:65535/tcp
sudo ufw allow 8000/tcp
sudo ufw allow 9000/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw allow 10000/tcp
sudo ufw allow 7777/tcp
sudo ufw allow 8888/tcp
sudo ufw allow 3306/tcp

sudo ufw allow mysql
sudo ufw allow http
sudo ufw allow https

sudo ufw enable

cd ${setup_dir}

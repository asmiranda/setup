echo "a7 - ************Start Certbot Setup************"

cd ${setup_dir}

sudo mkdir ${setup_tmp}/coturn
cd ${setup_tmp}/coturn

sudo ufw disable 
sudo ufw allow 3478/tcp
sudo ufw allow 3478/udp
sudo ufw allow 49152:65535/tcp

sudo apt-get update -y
sudo apt-get install coturn -y


sudo ufw enable

cd ${setup_dir}

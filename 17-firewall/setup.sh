export setup_dir=$(pwd)
export setup_tmp=/root/tmp

sudo git checkout .
sudo git pull 
sudo mkdir ${setup_tmp} && cd ${setup_dir}

echo "************Start Firewall Setup************"

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
sudo ufw allow socketio
sudo ufw allow flask
sudo ufw allow python

# sudo ufw enable
sudo ufw disable 

cd ${setup_dir}

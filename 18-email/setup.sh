export setup_dir=$(pwd)
export setup_tmp=/root/tmp

sudo git checkout .
sudo git pull 
sudo mkdir ${setup_tmp} && cd ${setup_dir}

echo "************Start Email Setup************"

cd /
sudo useradd -p $(openssl passwd -1 Miran!11) -s /bin/bash -d /home/admin/ -m -G sudo admin
sudo mkdir mailu && cd mailu
sudo docker-compose -p mailu exec admin flask mailu admin admin dynamikosoft.com Miran!11

cd ${setup_dir}

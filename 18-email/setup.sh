export setup_dir=$(pwd)
export setup_tmp=/root/tmp

sudo git checkout .
sudo git pull 
sudo mkdir ${setup_tmp} && cd ${setup_dir}

echo "************Start Email Setup************"

sudo useradd -p $(openssl passwd -1 Miran!11) -s /bin/bash -d /home/admin/ -m -G sudo admin
cd /
sudo mkdir mailu && cd mailu
cp ${setup_dir}/18/email/. /mailu
sudo docker-compose -p mailu exec admin flask mailu admin admin dynamikosoft.com Miran!11

cd ${setup_dir}

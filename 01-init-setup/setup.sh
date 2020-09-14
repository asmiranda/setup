export setup_dir=$(pwd)
export setup_tmp=/root/tmp

sudo git checkout .
sudo git pull 
sudo mkdir ${setup_tmp} && cd ${setup_dir}


echo "************Start Init Setup************"

sudo useradd -p $(openssl passwd -1 Miran!11) -s /bin/bash -d /home/alex/ -m -G sudo alex
echo "create and move to /home/alex/innovation"
sudo mkdir /home/alex/innovation
echo "create and move to /home/alex/innovation/dynamiko"
sudo mkdir /home/alex/innovation/dynamiko
echo "create dir /home/alex/innovation/dynamiko/server and ui"
sudo mkdir /home/alex/innovation/dynamiko/server
sudo mkdir /home/alex/innovation/dynamiko/ui

sudo chmod -R 777 .
sudo chmod -R 777 installation/.

cd ${setup_dir}



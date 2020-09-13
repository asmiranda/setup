export setup_dir=$(pwd)
export setup_tmp=/root/tmp

sudo git checkout .
sudo git pull 
sudo mkdir ${setup_tmp} && cd ${setup_dir}


echo "1 - ************Start Dynamiko GetSource************"

sudo git config credential.helper store

cd /home/alex/innovation/dynamiko/server
sudo git clone https://asmiranda:080531Miranda!@github.com/asmiranda/dynamiko-python-service.git
cd /home/alex/innovation/dynamiko/server/dynamiko-python-service
sudo git checkout .
sudo git pull

cd /home/alex/innovation/dynamiko/ui
sudo git clone https://asmiranda:080531Miranda!@github.com/asmiranda/dynamiko-ui.git
cd /home/alex/innovation/dynamiko/ui/dynamiko-ui
sudo git checkout .
sudo git pull

cd ${setup_dir}

pwd

export setup_dir=$(pwd)
export setup_tmp=/root/tmp

sudo git checkout .
sudo git pull 
sudo mkdir ${setup_tmp} && cd ${setup_dir}

echo "************Start Coturn Setup************"

sudo apt-get update -y
sudo apt-get install coturn -y

sudo cp ./coturn /etc/default
sudo cp ./turnserver.conf /etc

sudo service coturn restart

cd ${setup_dir}

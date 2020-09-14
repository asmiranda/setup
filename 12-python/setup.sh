export setup_dir=$(pwd)
export setup_tmp=/root/tmp

sudo git checkout .
sudo git pull 
sudo mkdir ${setup_tmp} && cd ${setup_dir}

echo "************Start Python Setup************"

sudo apt update -y
sudo apt install software-properties-common -y 
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt update -y

sudo apt install python3.8 -y
sudo python ––version

cd ${setup_dir}

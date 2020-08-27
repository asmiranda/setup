echo "2 - ************Start WebMin Setup************"
echo "Note: Manual Setup is needed for security and dev setup [Custom Commands]"

cd ${setup_dir}

sudo mkdir ${setup_tmp}/webmin
cd ${setup_tmp}/webmin

sudo apt update -y
sudo apt install software-properties-common apt-transport-https wget -y

sudo wget -q http://www.webmin.com/jcameron-key.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] http://download.webmin.com/download/repository sarge contrib"

sudo apt install webmin -y

cd ${setup_dir}

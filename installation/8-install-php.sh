echo "8 - ************Start PHP Setup************"

cd ${setup_dir}

sudo mkdir ${setup_tmp}/php
cd ${setup_tmp}/php

sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:ondrej/php -y

sudo apt install php7.4-fpm php7.4-common php7.4-mysql php7.4-gmp php7.4-curl php7.4-intl php7.4-mbstring php7.4-xmlrpc php7.4-gd php7.4-xml php7.4-cli php7.4-zip -y

cd ${setup_dir}

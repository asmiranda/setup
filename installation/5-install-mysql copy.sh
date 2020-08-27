echo "5 - ************Start MySQL Setup************"

cd ${setup_dir}


sudo mkdir ${setup_tmp}/mysql
cd ${setup_tmp}/mysql

sudo apt-get update

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password Miran!11'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password Miran!11'
sudo apt-get -y install mysql-server

sudo cp ${setup_dir}/conf.d/mysqld.conf /etc/mysql/mysql.conf.d/mysqld.cnf

# sudo ufw enable
# sudo ufw allow mysql
sudo systemctl start mysql
sudo systemctl enable mysql

# need to do manual setup for root access in webmin, then rerun the script
sudo mysql -h "localhost" -u "root" "-pMiran!11" < ${setup_dir}/helper/mysql-init.sql

cd ${setup_dir}

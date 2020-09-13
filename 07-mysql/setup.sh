export setup_dir=$(pwd)
export setup_tmp=/root/tmp

sudo git checkout .
sudo git pull 
sudo mkdir ${setup_tmp} && cd ${setup_dir}

echo "************Start MySQL Setup************"
cd ${setup_tmp}/mysql

docker run --name dynamiko-mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=Miran!11 -d mysql:8.0.21
# note: need to manually connect as  root to mysql thru webmin before resume.

cd ${setup_dir}

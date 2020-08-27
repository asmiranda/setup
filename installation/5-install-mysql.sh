echo "5 - ************Start MySQL Setup************"

cd ${setup_dir}


sudo mkdir ${setup_tmp}/mysql
cd ${setup_tmp}/mysql

docker run --name dynamiko-mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=Miran!11 -d mysql:8.0.21

cd ${setup_dir}

echo "5 - ************Start MySQL Setup************"

cd ${setup_dir}


sudo mkdir ${setup_tmp}/mysql
cd ${setup_tmp}/mysql

docker run --name dynamiko-mysql -e MYSQL_ROOT_PASSWORD=Miran!11 -d mysql:tag

cd ${setup_dir}

echo "************Start EPLTRC Setup************"

export setup_dir=/root/setup
export setup_tmp=/root/tmp

cd ${setup_dir}/customers

docker-compose -f ./compose/epltrc.docker-compose.yml stop
docker-compose -f ./compose/epltrc.docker-compose.yml up -d

echo "EPLTRC Up and Running"

cd ${setup_dir}

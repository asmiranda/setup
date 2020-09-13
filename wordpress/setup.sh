export setup_dir=$(pwd)

cd ${setup_dir} && cd nginx-proxy && ./start.sh
cd ${setup_dir} && cd wordpress-letsencrypt && docker-compose up -d


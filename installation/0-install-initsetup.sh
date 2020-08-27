echo "0 - ************Start Init Setup************"

sudo useradd -p $(openssl passwd -1 Miran!11) -s /bin/bash -d /home/alex/ -m -G sudo alex
echo "create and move to /home/alex/innovation"
sudo mkdir /home/alex/innovation
echo "create and move to /home/alex/innovation/dynamiko"
sudo mkdir /home/alex/innovation/dynamiko
echo "create dir /home/alex/innovation/dynamiko/server and ui"
sudo mkdir /home/alex/innovation/dynamiko/server
sudo mkdir /home/alex/innovation/dynamiko/ui

sudo chmod -R 777 .
sudo chmod -R 777 installation/.

pwd


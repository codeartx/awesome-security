#####
# https://gitee.com/freshday/radar
#####
docker-compose down --volumes
sleep 3
echo

docker-compose up -d mysql redis mongodb elasticsearch
sleep 5
echo

docker-compose up -d admin engine

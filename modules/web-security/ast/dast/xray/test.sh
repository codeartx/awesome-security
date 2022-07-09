rm -rf output

docker-compose -f xray-compose.yml down
sleep 5

docker-compose -f xray-compose.yml up -d web-dvwa
sleep 5

docker-compose -f xray-compose.yml up xray

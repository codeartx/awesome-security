#####
# https://github.com/cookieY/Yearning
#####
docker-compose up -d mysql
sleep 10

echo
docker-compose up -d yearning

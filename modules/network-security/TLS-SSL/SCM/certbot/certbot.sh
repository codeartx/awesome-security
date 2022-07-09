#####
# https://github.com/certbot/certbot
#####
# nginx先把nginx开启，然后测试证书发放是否可以
#docker-compose down --volumes
docker-compose up -d nginx
sleep 5

echo
docker-compose run --rm certbot certonly --webroot --webroot-path /usr/share/certbot/www/

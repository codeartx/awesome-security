#####
# https://github.com/awake1t/linglong
#####
echo 'clean old....'
docker-compose down --volumes

echo
echo 'init mysql....'
docker-compose up -d mysql
sleep 15

echo
echo 'start server....'
docker-compose up -d server
sleep 10

echo
echo 'start web....'
docker-compose up -d web

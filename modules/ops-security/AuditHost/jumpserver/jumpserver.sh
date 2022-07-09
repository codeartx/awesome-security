#####
# https://github.com/jumpserver/jumpserver
#####
rm -rf ~/tmp/volumes/jumpserver

docker-compose -f docker-compose-network.yml -f docker-compose-redis.yml -f docker-compose-mariadb.yml -f docker-compose-init-db.yml up -d
docker exec -i jms_core bash -c './jms upgrade_db'

docker-compose -f docker-compose-network.yml -f docker-compose-redis.yml -f docker-compose-mariadb.yml -f docker-compose.yml up -d

# web: admin/admin
# http://localhost

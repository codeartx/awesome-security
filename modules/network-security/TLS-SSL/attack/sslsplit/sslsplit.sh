#####
# https://github.com/droe/sslsplit
#####

if [ ! -f './data/keys/ca.key' ]; then
	openssl req -x509 -newkey rsa:2048 -nodes -keyout ./data/keys/ca.key -out ./data/keys/ca.crt -days 3650 -subj '/CN=EasyPi'
fi

docker-compose up -d

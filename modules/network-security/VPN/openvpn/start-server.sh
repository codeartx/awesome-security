
echo 'init server pki...'
rm -rf ./volumes
docker-compose run --rm openvpn ovpn_genconfig -u udp://VPN.SERVERNAME.COM
docker-compose run --rm openvpn ovpn_initpki

echo
echo 'start ...'
docker-compose up -d

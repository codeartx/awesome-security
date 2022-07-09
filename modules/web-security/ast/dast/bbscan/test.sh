
docker rm -f bbscan
echo

docker run --rm --name bbscan huafeihuao0/bbscan:1.5 \
	--host www.site.com --network 28

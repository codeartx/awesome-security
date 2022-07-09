image='huafeihuao0/dnstwist:20220131'
docker build -f Dockerfile -t ${image} .
docker push ${image}

image='huafeihuao0/grr-client:3.4.6.0'
docker build -f Dockerfile -t ${image} .
docker push ${image}

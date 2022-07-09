image='huafeihuao0/dirsearch:v0.4.2'
docker build -f Dockerfile -t ${image} .
docker push ${image}

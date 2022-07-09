#####
# https://github.com/projectdiscovery/proxify
#####
docker rm  -f proxify

docker run --name proxify -p 8888:8888 -d projectdiscovery/proxify:v0.0.6
sleep 5

curl --proxy http://127.0.0.1:8888 http://hackerone.com

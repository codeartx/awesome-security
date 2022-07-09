#####
# https://github.com/projectdiscovery/httpx
#####
cat ./asset/hosts.txt | docker run -i --rm projectdiscovery/httpx:v1.2.1 -title -tech-detect -status-code -timeout 2 -threads 30  -web-server

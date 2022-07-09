#####
# https://github.com/mitmproxy/mitmproxy
#####

docker run --rm -it \
	-p 8080:8080 \
	-p 127.0.0.1:8081:8081 \
	mitmproxy/mitmproxy mitmweb --web-host 0.0.0.0

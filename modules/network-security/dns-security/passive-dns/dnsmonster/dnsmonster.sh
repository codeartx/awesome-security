#####
# https://github.com/mosajjal/dnsmonster
#####
docker run --rm -it \
	--net=host --cap-add NET_RAW --cap-add NET_ADMIN \
	ghcr.io/mosajjal/dnsmonster:latest --devName lo --stdoutOutputType=1

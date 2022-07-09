docker run --rm -p 53:53/tcp -p 53:53/udp \
	-v ${PWD}/dnsmasq.conf:/etc/dnsmasq.conf \
	-v ${PWD}/resolv.conf:/etc/resolv.conf \
	--cap-add=NET_ADMIN 4km3/dnsmasq:2.85-r2 --log-facility=- -q

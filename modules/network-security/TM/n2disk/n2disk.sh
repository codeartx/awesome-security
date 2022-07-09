#####
# https://www.ntop.org/products/traffic-recording-replay/n2disk/
#####

# 没有 license 无法运行
docker run -it \
	-v $(pwd)/n2disk.license:/etc/n2disk.license \
	--net=host --cap-add IPC_LOCK \
	ntop/n2disk:stable -i eth0 -o /tmp
# n2disk --version

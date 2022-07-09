#####
# https://github.com/sleuthkit/sleuthkit
#####
docker run --rm -v $(pwd):/input cincan/sleuthkit:4.11.0 \
	fls /input

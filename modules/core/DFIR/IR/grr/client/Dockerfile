FROM ubuntu:20.04

WORKDIR /opt

# 服务端启动后下载 http://localhost:8000/api/config/binaries-blobs/EXECUTABLE/linux/installers/grr_3.4.6.0_amd64.deb
COPY asset/grr_3.4.6.0_amd64.deb .

RUN dpkg -i grr_3.4.6.0_amd64.deb

ENTRYPOINT  grrd --config=/usr/lib/grr/grr_3.4.6.0_amd64/grrd.yaml

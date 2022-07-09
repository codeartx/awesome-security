FROM webgoat/webgoat-8.0


COPY sources.list /etc/apt/sources.list

USER root

RUN rm -rf /var/lib/apt/lists/* && apt-get update && apt-get clean
RUN apt-get install -y wget procps curl

WORKDIR /root/

# 安装 java 版本 rasp
RUN wget https://packages.baidu.com/app/openrasp/release/1.3.0/rasp-java.zip && \
    unzip rasp-java.zip && \
    rm -rf rasp-java.zip && \
    mv rasp-2* rasp-java

COPY config/openrasp.yml /root/rasp-java/rasp/conf/openrasp.yml
COPY start.sh /root/

ENTRYPOINT ["/bin/bash", "/root/start.sh"]

FROM python:3.7.4-slim-stretch
WORKDIR /root

COPY sources.list /etc/apt/sources.list

RUN apt-get update && \
    apt-get install -y wget curl gcc netcat procps unzip

COPY requirements.txt /root
RUN cd /root/ && pip3 install -r requirements.txt
RUN ln -s /usr/local/bin/pytest /usr/local/bin/pytest3

COPY openrasp_iast-1.3.0.zip /root/
RUN unzip openrasp_iast-1.3.0.zip

COPY config /root/openrasp-iast/
COPY logs /root/openrasp-iast-logs/
COPY testfiles /testfiles

COPY test-iast.sh /root/
COPY start.sh /root

EXPOSE 80
ENTRYPOINT ["/bin/bash", "/root/start.sh"]

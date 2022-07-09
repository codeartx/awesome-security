FROM elasticsearch:6.4.2

COPY elasticsearch.sh /etc/init.d/elasticsearch.sh
RUN chmod +x /etc/init.d/elasticsearch.sh

COPY start.sh /root

ENTRYPOINT ["/bin/bash", "/root/start.sh"]

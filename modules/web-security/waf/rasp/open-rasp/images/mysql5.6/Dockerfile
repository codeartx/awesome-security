FROM mysql:5.6

COPY mysql.sh /etc/init.d/mysql.sh
RUN chmod +x /etc/init.d/mysql.sh

RUN mysql_install_db --datadir=/mysql_database --user=mysql

COPY start.sh /root/
COPY db.sql /root/

ENTRYPOINT ["/bin/bash", "/root/start.sh"]
EXPOSE 3306

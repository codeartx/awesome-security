FROM php:7.2-apache

# 安装基础工具、依赖
COPY sources.list /etc/apt/sources.list
RUN apt-get update && \
    apt-get install -y wget unzip libpng-dev mariadb-server curl netcat

# 安装 mysql
RUN docker-php-source extract \
    && docker-php-ext-install mysqli gd pdo_mysql \
    && docker-php-source delete

# 复制 php 服务器配置
COPY config/php/000-default.conf /etc/apache2/sites-available/000-default.conf
COPY config/php/ports.conf /etc/apache2/ports.conf
COPY config/php/php.ini /usr/local/etc/php/php.ini

# 安装 OpenRASP
RUN cd /root && \
	wget https://packages.baidu.com/app/openrasp/release/1.3.0/rasp-php-linux.tar.bz2 && \
	tar -jxf rasp-php-linux.tar.bz2 && \
    rm -rf rasp-php-linux.tar.bz2 && \
    mv rasp-php-* rasp-php && \
	cd rasp-php && \
    php install.php -d /opt/rasp \
        --app-id 6f00ed51e1b2c7a16dadd8aec673a9e8d91b8011 \
        --app-secret Z3cKrtbqZrqbpYICaBzObiZiOyFPPbvoLh75hyKpsgB \
        --backend-url http://rasp-cloud:8086 \
        --rasp-id 0000000000000001

# 调整心跳时间
RUN sed -i "s/openrasp.heartbeat_interval=180/openrasp.heartbeat_interval=10/" /usr/local/etc/php/conf.d/z_openrasp.ini

# 安装 Mutillidae 漏洞靶场
RUN cd /root && \
    wget https://packages.baidu.com/app/mutillidae-v2.7.11.zip -O v2.7.11.zip && \
    unzip v2.7.11.zip && \
    rm -rf v2.7.11.zip && \
    mv mutillidae* mutillidae
COPY config/mutillidae/.htaccess /root/mutillidae/.htaccess

# 复制 漏洞靶场 dvwa、vulns
COPY html /var/www/html

# 用于初始化 openrasp、dvwa、mutillidae 所需的数据
COPY db.sql /root/db.sql

COPY start.sh /root/

ENTRYPOINT ["/bin/bash", "/root/start.sh"]

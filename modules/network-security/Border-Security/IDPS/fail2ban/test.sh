# 查看启动的模块、规则
fail2ban-client status

# 查看模块详细
fail2ban-client status nginxno404

# 验证 nginxno404 规则
fail2ban-regex /home/wwwlogs/access.log /etc/fail2ban/filter.d/nginx-not-found.conf

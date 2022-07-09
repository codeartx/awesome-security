#####
# https://www.netfilter.org/projects/iptables/index.html
#####

# 查看 nat 表所有规则
iptables -t nat -L -n -v --line-numbers

# 查看 filter 表所有规则
iptables -t filter -L -n -v --line-numbers

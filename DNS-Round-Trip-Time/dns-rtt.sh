# Input
#
# [user@system ]$ cat dns-rtt.sh
while true
do
ping -c 4 1.1.1.1 | tail -1 | awk '{print }' | cut -d '/' -f 5 | tr '\n' '\t'
ping -c 4 8.8.8.8 | tail -1 | awk '{print }' | cut -d '/' -f 5 | tr '\n' '\t'
date
sleep 10
done
# Execution & output
#
# [user@system ]$ sudo cp dns-rtt.sh /usr/bin/dns-rtt
# [user@system ]$ dns-rtt
# 14.447 13.020 Fri 11 Feb 2022 08:22:09 AEDT
# 14.557 16.308 Fri 11 Feb 2022 08:22:25 AEDT
# 13.184 16.044 Fri 11 Feb 2022 08:22:41 AEDT
# 15.738 13.602 Fri 11 Feb 2022 08:22:57 AEDT
# 16.989 12.482 Fri 11 Feb 2022 08:23:13 AEDT

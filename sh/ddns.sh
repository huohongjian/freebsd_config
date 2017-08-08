#!/bin/sh
# set NEWIP=`ifconfig | grep 'inet' | grep -v '127.*' | grep -v '192.(222)*' | awk '{print $2}'`

NEWIP=`/usr/local/bin/curl http://members.3322.org/dyndns/getip`
echo $NEWIP
OLDIP=`cat /tmp/ip.txt`

if [ "$NEWIP" = "$OLDIP" ]; then
	echo "ipaddress is newly"
else
	/usr/local/bin/lynx -mime_header -auth=huohongjian:Hhj197592 \
	"http://members.3322.net/dyndns/update?system=dyndns&hostname=hrr.f3322.org"
	echo $NEWIP > /tmp/ip.txt
fi

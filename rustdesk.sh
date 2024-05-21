#！/bin/sh
wx(){
cat > $0.msg << EOF
curl '$WEBHOOK' \
   -H 'Content-Type: application/json' \
   -d '
   {
        "msgtype": "text",
        "text": {
            "content": "$1",
            "mentioned_mobile_list":["$2"]
        }
   }'
EOF
sh $0.msg && rm -rf $0.msg
}
echo "$1"
a=$(tcping -x 2 "$1")
b=$(tcping -x 2 192.168.2.1 81)
c="open"
result=$(echo $a | grep "${c}")
if [ "$result" != "" ]; then
echo "$a"
else
sleep 600
d=$(tcping -x 5 "$1")
result=$(echo $d | grep "${c}")
 if [ "$result" != "" ]; then
 echo "包含"
 else
 wx "github提醒您，位于王村北街的路由器断线了。。。注意注意。。赶快让这家伙干活了"
 fi
fi

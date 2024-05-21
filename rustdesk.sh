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
a=$(tcping -x 2 "$1" 2115)
b=$(tcping -x 2 "$1" 2116)
c=$(tcping -x 2 "$1" 2117)

e=$(tcping -x 2 192.168.2.1 81)
o="open"
result1=$(echo $a | grep "${o}")
result2=$(echo $b | grep "${o}")
result3=$(echo $c | grep "${o}")
echo "$a"
echo "$b"
echo "$c"
if  [ "$result1" != "" ]||[ "$result2" != "" ]||[ "$result3" != "" ]; then
echo "端口开启正常"
else
 wx "github提醒您，rustdesk离线，请注意检修"
fi

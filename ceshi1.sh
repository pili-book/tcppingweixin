#！/bin/sh
wx(){
#将下面的webhook地址替换成你的企业微信机器人地址，$1为告警消息 $2为@人的手机号 $2可以为空
cat > $0.msg << EOF
curl 'https://qyapi.weixin.qq.com/cgi-bin/webhook/send?key=d25d7339-9b15-4b17-80ae-2f546140c349' \
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
a=$(tcping -x 2 mailla.eu.org 81)
b=$(tcping -x 2 192.168.2.1 81)
c="open"
result=$(echo $a | grep "${c}")
if [ "$result" != "" ]; then
echo "包含"
else
echo "不包含"
fi


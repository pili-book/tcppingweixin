a=$(tcping -x 2 mailla.eu.org 81)
b=$(tcping -x 2 192.168.2.1 81)
result=$(echo $a | grep "${open}")
if [[ "$result" != "" ]]
then
    echo "包含"
else
    echo "不包含"
fi


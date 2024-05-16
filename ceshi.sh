a=$(tcping -x 2 mailla.eu.org 81)
b=$(tcping -x 2 192.168.2.1 81)
if [[ "a" != *"open"* ]]; then
  echo "变量中不包含字符串 open"
else
  echo "变量中包含字符串 open"
fi
echo $b

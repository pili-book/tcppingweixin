#!/usr/local/bin//tcping
 
 
if tcping -x 5 mailla.eu.org  &>/dev/null; then
    echo "成功ping"
else
    echo "无法ping"
fi

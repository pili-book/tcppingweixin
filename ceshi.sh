
# -x 判断$myPath是否存在并且是否具有可执行权限
if [tcping  -x 5  mailla.eu.org 81];then
      echo "324 " 
else
        echo -n "321" 
        failure
        echo "244 "
fi


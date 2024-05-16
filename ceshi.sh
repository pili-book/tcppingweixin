#!/usr/bin/env sh
if [tcping  -x 5  mailla.eu.org 81&>> /dev/null] ;then
        echo "324 " 
else
        echo -n "321" 
        failure
        echo "244 "
fi

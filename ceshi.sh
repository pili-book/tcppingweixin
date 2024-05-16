
#!/bin/bash
if tcping  -x 5  mailla.eu.org 81&>> /dev/null ;then
        echo -n " 123"
        success
        echo "324 " 
else
        echo -n "321"
        failure
        echo "244 "
fi

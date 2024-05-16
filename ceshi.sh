sudo apt-get install -y tcptraceroute bc
sudo wget  https://github.com/pili-book/tcppingweixin/blob/master/tcping
sudo chmod +x tcping
sudo mv tcping /usr/local/bin/tcping
tcping  -x 5  mailla.eu.org 81
a=tcping  -x 5  mailla.eu.org 81
 echo $a

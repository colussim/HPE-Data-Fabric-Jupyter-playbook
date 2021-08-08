PS=`ps -ef |grep -v grep|grep getstatuspod-$1.sh |awk '{print $2}'`
kill -9 $PS

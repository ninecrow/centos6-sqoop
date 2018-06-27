#!/bin/bash

sudo service sshd start

if [[ $1 == "-init" ]]; then
   echo "init sqoop2"
   $SQOOP_HOME/bin/sqoop2-tool upgrade
   $SQOOP_HOME/bin/sqoop2-tool verify
fi

if [[ $1 == "-sqoop2" ]]; then
  echo "starting sqoop2 server"
  $SQOOP_HOME/bin/sqoop2-server start
  exec tail -f $SQOOP_HOME/@LOGDIR@/sqoop.log
fi

if [[ $1 == "-d" ]]; then
  while true; do sleep 1000; done
fi

if [[ $1 == "-bash" ]]; then
  /bin/bash
fi

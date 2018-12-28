#!/bin/bash
if [ "off" = "$MUSIC_ON_COMMAND" ]; then
  exit
fi
cmd_name=$1
if [ "mon" = "$cmd_name" ]; then
  exit
fi
ps -ef | grep afplay | grep -v grep > /dev/null
ret="$?"
if [ "$ret" = "1" ] ; then
  afplay $BASH_MUSIC_FILE & 
  export music_pid=$!
else
  exit
fi
while :; do
  ps -ef | awk '{print $8}' | egrep `echo ''''^$cmd_name$''''` > /dev/null
  if [ "$?" != "0" ]; then
    kill -9 $music_pid > /dev/null 2>&1
    break
  fi
  ps -ef | awk '{print $2}' | egrep "$music_pid" > /dev/null
  if [ "$?" != "0" ]; then
    break
  fi
  sleep 1
done&

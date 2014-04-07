#!/bin/bash
set -e
QUEUE=$1
COMMAND=$2
DEBUG=$QUEUED_DEBUG
SLEEP=${QUEUED_SLEEP:-1}
if [[ "$QUEUE" == '' || "$COMMAND" == '' ]]
then
  echo '[QUEUED] [USAGE] queued <queue-file> <command>'
  exit
fi
[ $DEBUG ] && echo "[QUEUED] [BEGIN] file='$QUEUE' command='$COMMAND'"
ITEM=$(head -n 1 $QUEUE)
while [  "$ITEM" != '' ]; do
  [ $DEBUG ] && echo "[QUEUED] item='$ITEM'"
  $COMMAND $ITEM
  sed -i.bak "/$ITEM/d" $QUEUE
  ITEM=$(head -n 1 $QUEUE)
  sleep $SLEEP
done
[ $DEBUG ] && echo "[QUEUED] [END]"

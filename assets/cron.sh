#!/bin/sh

DATA_PATH=${DATA_PATH:-"/data"}
CRONTAB_PATH=${CRONTAB_PATH:-"/var/spool/cron/crontabs"}
SCRIPTS_PATH=${SCRIPTS_PATH:-"/usr/local/bin"}

crond -s ${CRONTAB_PATH} \
  -L /dev/stdout \
  -f &

wait

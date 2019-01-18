#!/usr/bin/env bash

/usr/bin/apt-mirror 2>&1 | tee /var/spool/apt-mirror/var/cron.log
/var/spool/apt-mirror/var/clean.sh 2>&1 | tee /var/spool/apt-mirror/var/cron.log;

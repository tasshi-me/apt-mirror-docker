#!/usr/bin/env bash

su - apt-mirror -c "/usr/bin/apt-mirror 2>&1 | tee /var/spool/apt-mirror/var/cron.log"
su - apt-mirror -c "/var/spool/apt-mirror/var/clean.sh 2>&1 | tee /var/spool/apt-mirror/var/cron.log;"

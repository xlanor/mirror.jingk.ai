#!/bin/sh

echo "Starting startup.sh.."
echo "0 0,6,12,18 * * *        run-parts /etc/periodic/mirror" >> /etc/crontabs/root
echo "* * * * *        run-parts /etc/periodic/1min" >> /etc/crontabs/root
crontab -l



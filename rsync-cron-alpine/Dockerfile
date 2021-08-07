FROM alpine:latest

# Copy script which should be run
# Run the cron every minute
RUN apk add busybox-initscripts
RUN echo "0 0,6,12,18 * * *        run-parts /etc/periodic/mirror" >> /etc/crontabs/root
RUN echo "* * * * *       run-parts /etc/periodic/1min" >> /etc/crontabs/root

CMD ["crond", "-l", "2", "-f"]
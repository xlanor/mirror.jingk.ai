FROM ubuntu:20.04
MAINTAINER contact@jingk.ai

ARG UID=1000
ARG GID=1000

RUN apt-get update && apt-get -y install cron rsync ca-certificates

# crontab

# Copy rsync-cron file to the cron.d directory
COPY rsync-cron /etc/cron.d/rsync-cron

# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/rsync-cron

# Apply cron job
RUN crontab /etc/cron.d/rsync-cron

# Create the log file to be able to run tail
RUN touch /var/log/cron.log

# Run the command on container startup
CMD cron && tail -f /var/log/cron.log

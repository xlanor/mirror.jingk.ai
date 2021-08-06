# Taken from https://github.com/mettke/dockerfiles/tree/master/rsyncd-alpine
# not updated to latest container for over a year.
FROM alpine:3.13
LABEL maintainer="Jingkai Tan <contact@jingk.ai>"

RUN apk --no-cache add rsync && \
    mkdir -p /config /data /log && \
    cp /etc/rsyncd.conf /config

EXPOSE 873
VOLUME /data
VOLUME /config
VOLUME /log

ENTRYPOINT [ "/usr/bin/rsync", \
    "--daemon", \
    "--no-detach", \
    "--config=/config/rsyncd.conf", \
    "--log-file=/log/rsyncd.log", \
    "--dparam=pidfile=/var/run/rsyncd.pid" \
]

HEALTHCHECK CMD /bin/ash -c "PID=\$(cat /var/run/rsyncd.pid) && [ -n \"\${PID}\" -a -d \"/proc/\${PID}\" ] && exit 0 || exit 1"
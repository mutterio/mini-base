FROM scratch

ADD ./rootfs.tar.xz /

ADD ./scripts/apk-install /usr/sbin/apk-install
RUN apk update && apk upgrade

# Base packages useful for other containers
RUN apk-install ca-certificates curl wget

CMD ["/bin/sh"]

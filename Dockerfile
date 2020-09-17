##
## author: Piotr Stawarski <piotr.stawarski@zerodowntime.pl>
##

FROM alpine:latest

RUN apk add --no-cache tini

ENV WAIT_FILE /run/waitlock
ENV WAIT_SECONDS 5

COPY docker-entrypoint.sh /

ENTRYPOINT ["/sbin/tini", "--", "/docker-entrypoint.sh"]

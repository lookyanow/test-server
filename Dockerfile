FROM alpine

ADD main /usr/bin/server

EXPOSE 80/tcp

ENTRYPOINT /usr/bin/server

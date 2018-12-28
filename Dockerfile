FROM alpine

ADD test-server /usr/bin/server

EXPOSE 80/tcp

ENTRYPOINT /usr/bin/server

FROM golang

#---
ADD main /usr/bin/server

ENTRYPOINT /usr/bin/server

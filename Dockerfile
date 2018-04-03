FROM alpine:latest

ENV PORT=25565
ENV MOTD="McMyAdmin2 server"

RUN apk update && apk upgrade && apk --no-cache add socat bash
COPY ./mclan.sh /bin/

ENTRYPOINT ["/bin/bash /bin/mclan.sh"]

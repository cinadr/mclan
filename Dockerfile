FROM alpine:latest

ENV HOST=192.168.1.240
ENV PORT=25565
ENV MOTD="McMyAdmin2 server"

RUN apk update && apk upgrade && apk --no-cache add socat
COPY ./mclan.sh /bin/

ENTRYPOINT ["/bin/mclan.sh"]

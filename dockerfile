FROM alpine:3.7


RUN apk update && apk upgrade
RUN apk add openrc
RUN apk add mysql mysql-client
RUN apk add bash
RUN mkdir /temp


COPY run.sh /temp


RUN sh /temp/run.sh




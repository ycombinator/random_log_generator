FROM alpine:3.7

RUN apk update
RUN apk upgrade
RUN apk add bash

COPY ./generate.sh ./generate.sh

CMD ["./generate.sh"]

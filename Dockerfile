FROM alpine

ADD kano.sh /kano.sh
ADD kano /usr/local/bin/kano

RUN apk update && \
    apk add -f --no-cache ca-certificates wget unzip bash && \
    chmod 777 /kano.sh && \
    chmod 777 /usr/local/bin/kano

CMD /kano.sh
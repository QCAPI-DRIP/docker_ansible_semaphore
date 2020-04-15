FROM ansiblesemaphore/semaphore

USER root

RUN echo "http://dl-3.alpinelinux.org/alpine/latest-stable/main" > /etc/apk/repositories && \
    echo "http://dl-3.alpinelinux.org/alpine/latest-stable/communit" >> /etc/apk/repositories

RUN apk add --upgrade apk-tools && apk upgrade --available
RUN apk update && apk upgrade && apk add py-pip


USER semaphore

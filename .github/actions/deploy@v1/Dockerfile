FROM ruby:2.7-alpine

COPY . /app/
RUN ls -al
COPY config/deploy/start_deploy.sh /entrypoint.sh

RUN apk add --update openssh-client openssl && \
    rm -rf /var/cache/apk/*

WORKDIR /app

ENTRYPOINT ["/entrypoint.sh"]

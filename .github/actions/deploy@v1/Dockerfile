FROM ruby:2.7-alpine

COPY . /app/

RUN apk add --update openssh-client openssl && \
    rm -rf /var/cache/apk/*

WORKDIR /app

ENTRYPOINT ["config/deploy/start_deploy.sh"]

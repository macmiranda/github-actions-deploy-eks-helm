FROM dtzar/helm-kubectl:3.10.2

COPY deploy.sh /usr/local/bin/deploy

RUN chmod +x /usr/local/bin/deploy; \
    chown 555 /usr/local/bin/deploy; \
    apk add --no-cache aws-cli

CMD deploy

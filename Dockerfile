FROM openjdk:11-jre

ENV TZ Asia/Shanghai

WORKDIR /app

ADD ./mcl/ .

ADD ./plugins/*.jar ./plugins/

RUN chmod +x mcl && \
    ./mcl --update-package net.mamoe:mirai-core-all --channel nightly &&\
    ./mcl --dry-run

EXPOSE 8080

CMD ["./mcl"]

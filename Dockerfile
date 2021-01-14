FROM openjdk:11-jre

ENV TZ Asia/Shanghai

ADD ./mcl /app

WORKDIR /app

RUN mkdir plugins

ADD ./plugins/*.jar ./plugins/

CMD ["./mcl"]

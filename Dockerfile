FROM java:8-jre


RUN mkdir /app
RUN mkdir /app/images

ADD assets/application.properties /app
ADD assets/oauth-server-0.0.1.jar /app

ADD assets/entry.sh /app

EXPOSE 8080

WORKDIR /app

ENTRYPOINT ./entry.sh

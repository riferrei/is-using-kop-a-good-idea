FROM maven:3.8.1-openjdk-17-slim

VOLUME /tmp
ADD . /usr/src/app
WORKDIR /usr/src/app

RUN mvn clean package -DskipTests
ENTRYPOINT [ "java", "-jar", "target/lone-talker-1.0-SNAPSHOT.jar" ]
FROM openjdk:8-jdk-alpine

VOLUME /tmp
CMD  find / -name test-0.0.1-SNAPSHOT.jar
ARG JAR_FILE=target/test-0.0.1-SNAPSHOT.jar

EXPOSE 8090

ADD ${JAR_FILE} canarysampleappspring.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/canarysampleappspring.jar"]

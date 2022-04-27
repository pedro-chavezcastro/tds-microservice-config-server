FROM openjdk:11
VOLUME [ "/tmp" ]
EXPOSE 8888
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} config-server.jar
ENTRYPOINT [ "java", "-jar", "/config-server.jar" ]
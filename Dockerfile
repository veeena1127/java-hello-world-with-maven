FROM amazoncorretto:8-alpine-jdk
ARG JAR_FILE=*.jar
COPY target/${JAR_FILE} jb-hello-world-maven-0.2.0.jar
ENTRYPOINT ["java","-cp","/jb-hello-world-maven-0.2.0.jar","hello.HelloWorld"]

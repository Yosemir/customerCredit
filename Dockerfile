FROM alpine
RUN apk update
RUN apk fetch openjdk11
RUN apk add openjdk11
COPY target/customerCredit-0.0.1-SNAPSHOT.jar  customerCredit-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","customerCredit-0.0.1-SNAPSHOT.jar"]
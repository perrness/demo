FROM azul/zulu-openjdk-alpine:24-latest
RUN addgroup -g 10000 appgroup && adduser -u 10000 -G appgroup -D appuser
USER appuser
COPY target/demo-0.0.1-SNAPSHOT.jar demo-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/demo-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080

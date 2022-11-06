FROM maven as base
WORKDIR /app
COPY . .
RUN mvn clean install

FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY --from=base  /app/target/simple-webapp.jar  /app/ROOT.jar
EXPOSE 9005
CMD ["java",'-jar'"ROOT.jar"]


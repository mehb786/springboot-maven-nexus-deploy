FROM maven as base
WORKDIR /app
COPY . .
RUN mvn clean install

FROM openjdk:11 
WORKDIR /app
USER ROOT
COPY --from=base /app/target/simple-webapp.jar .
EXPOSE 8000
CMD ["java","-jar","simple-webapp.jar"]

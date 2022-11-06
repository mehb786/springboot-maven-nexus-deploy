FROM maven as base
WORKDIR /app
RUN mvn clean install
COPY . .

FROM maven
WORKDIR /app
COPY --from= base /app/target/simple-webapp.jar  .
RUN mv /app/target/simple-wabapp.jar /ROOT.jar
CMD ["java",'-jar',"ROOT.jar"]

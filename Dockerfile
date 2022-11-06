FROM maven as base
WORKDIR /app
COPY . .

COPY  /target/simple-webapp.jar  .
RUN rm -rf *.jar && mv $PWD/target/simple-webapp.jar ROOT.jar
CMD ["java",'-jar',"ROOT.jar"]



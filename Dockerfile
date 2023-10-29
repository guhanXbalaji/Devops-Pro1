FROM openjdk:8
EXPOSE 8080
ADD target/devops-pro1.jar devops-pro1.jar
ENTRYPOINT ["java","-jar","/devops-pro1.jar"]
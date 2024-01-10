FROM openjdk:21
EXPOSE 8080
ADD target/github-cicd-actions-images.jar github-cicd-actions-images.jar
ENTRYPOINT ["java","-jar","/github-cicd-actions-images.jar"]
# java docker file is used to create docker java image
FROM adoptopenjdk/openjdk11
  
EXPOSE 8080
 
ENV APP_HOME /usr/src/app

COPY target/*.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

CMD ["java", "-jar", "app.jar"]

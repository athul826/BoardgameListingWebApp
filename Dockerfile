
FROM adoptopenjdk/openjdk11

EXPOSE 8080

ENV APP_HOME=/usr/src/app

# Set the working directory before copying
WORKDIR $APP_HOME

# Copy the JAR into the working directory
COPY target/database_service_project-0.0.3-SNAPSHOT.jar app.jar

# Run the application
CMD ["java", "-jar", "app.jar"]


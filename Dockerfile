# Stage 1 
FROM openjdk:17-jdk-slim
# Set the working directory
WORKDIR /app
# Copy the Maven build output (JAR file) to the container
COPY target/*.jar app.jar
# Expose the port on which the application will run
EXPOSE 9000
# Set the entry point for the container
# This command will run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar", "--server.port=9000", "--server.address=0.0.0.0"]

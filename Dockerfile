FROM openjdk:21-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Maven build output (your JAR file) into the container
COPY target/my-java-app-1.0-SNAPSHOT.jar /app/my-java-app.jar

# Expose a different port (if 8080 is already in use)
EXPOSE 8081

# Run the JAR file
CMD ["java", "-jar", "my-java-app.jar"]

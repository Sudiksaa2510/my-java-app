# Use a base image with Java installed
FROM openjdk:21-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Maven build output (your JAR file) into the container
COPY target/my-java-app.jar /app/my-java-app.jar

# Expose the port your app will run on (adjust if different)
EXPOSE 8080

# Run the JAR file
CMD ["java", "-jar", "my-java-app.jar"]

# Use the official OpenJDK image as a base image
FROM openjdk:21-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Maven build output (JAR file) into the container
# Make sure the JAR file name matches the actual file built by Maven
COPY target/my-java-app-1.0-SNAPSHOT.jar /app/my-java-app.jar

# Expose the port your app is listening on (adjust if needed)
EXPOSE 8081

# Run the JAR file
CMD ["java", "-jar", "my-java-app.jar"]

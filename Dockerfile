# Use a modern, lightweight Java 17 runtime image
FROM amazoncorretto:17-alpine

# Set working directory inside the container
WORKDIR /usr/app

# Copy the built jar from the Maven target directory into the image
# The wildcard will match something like: java-maven-app-1.1.0-SNAPSHOT.jar
COPY target/java-maven-app-*.jar app.jar

# Expose the port your Spring Boot app listens on
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

# Use Java 17 runtime
FROM eclipse-temurin:17-jdk-jammy

# Expose port
EXPOSE 8080

# Set working directory
WORKDIR /usr/app

# Copy the Spring Boot jar (adjust name to match your build)
COPY build/libs/demo-0.0.1-SNAPSHOT.jar app.jar

# Run the jar
ENTRYPOINT ["java", "-jar", "app.jar"]
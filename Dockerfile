# Step 1: Use a base image with Java 17
FROM openjdk:17-jdk-slim

# Step 2: Set working directory inside container
WORKDIR /app

# Step 3: Copy the project files
COPY . .

# Step 4: Build the project (skip tests for faster build)
RUN ./mvnw clean package -DskipTests

# Step 5: Expose port 8080
EXPOSE 8080

# Step 6: Run the JAR file
CMD ["java", "-jar", "target/jobportal-0.0.1-SNAPSHOT.jar"]

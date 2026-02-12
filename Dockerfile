# Use a valid OpenJDK base image
FROM openjdk:21

# Set working directory
WORKDIR /app

# Copy all files into the container
COPY . /app

# Compile the Java program
RUN javac AddTwoNumbers.java

# Run the program
CMD ["java", "AddTwoNumbers"]

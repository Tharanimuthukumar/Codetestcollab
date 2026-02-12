# Use a valid OpenJDK base image
FROM openjdk:21

# Set working directory
WORKDIR /app

# Copy all files into the container
COPY  Addtwonum.java

# Compile the Java program
RUN javac Addtwonum.java

# Run the program
CMD ["java", "Addtwonum"]

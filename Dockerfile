# Use a minimal Linux base
FROM ubuntu:22.04

WORKDIR /app

# Copy your local JDK 25 into the container
COPY jdk-25 /jdk
ENV JAVA_HOME=/app/jdk
ENV PATH=$JAVA_HOME/bin:$PATH

# Copy Java program
COPY Addtwonum.java /app/

# Compile Java program
RUN javac Addtwonum.java

# Run Java program
CMD ["java", "Addtwonum"]

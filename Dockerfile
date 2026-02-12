# Use a base Windows image
FROM mcr.microsoft.com/windows/servercore:ltsc2022

# Set working directory
WORKDIR /app

# Copy local JDK 25 into container (if you have it in project folder jdk-25)
COPY jdk-25 /jdk
ENV JAVA_HOME=C:/app/jdk
ENV PATH=$JAVA_HOME/bin:$PATH

# Copy your Java program
COPY Addtwonum.java /app/

# Compile the Java program
RUN javac Addtwonum.java

# Run the program
CMD ["java", "Addtwonum"]

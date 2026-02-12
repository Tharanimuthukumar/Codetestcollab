FROM ubuntu:22.04

WORKDIR /app

# Copy your local JDK 25
COPY jdk-25 /jdk
ENV JAVA_HOME=/app/jdk
ENV PATH=$JAVA_HOME/bin:$PATH

# Copy Java program
COPY Addtwonum.java /app/

# Compile and run
RUN javac Addtwonum.java

CMD ["java", "Addtwonum"]

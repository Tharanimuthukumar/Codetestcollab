FROM openjdk:17
WORKDIR /app
COPY Addtwonum.java
RUN javac Addtwonum.java
CMD ["java", "Addtwonum"]

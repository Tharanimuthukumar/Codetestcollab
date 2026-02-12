FROM openjdk:17-jdk

WORKDIR /app

COPY Addtwonum.java .

RUN javac Addtwonum.java

CMD ["java", "Addtwonum"]

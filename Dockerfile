FROM openjdk:25

WORKDIR /app

COPY Addtwonum.java /app/

RUN javac Addtwonum.java

CMD ["java", "Addtwonum"]

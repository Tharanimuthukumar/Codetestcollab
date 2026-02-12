FROM openjdk:17

WORKDIR /app

COPY Addtwonum.java /app/

RUN javac Addtwonum.java

CMD ["java", "Addtwonum"]

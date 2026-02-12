FROM openjdk:20   # or 17 if available
WORKDIR /app
COPY . /app
RUN javac AddTwoNumbers.java
CMD ["java", "AddTwoNumbers"]

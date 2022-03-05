FROM openjdk

COPY target/flight-2.0.jar /opt
RUN java -jar flight-2.0.jar




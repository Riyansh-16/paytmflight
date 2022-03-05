FROM openjdk

COPY target/flight-2.0.jar /opt
RUN  cd /opt && java -jar flight-2.0.jar




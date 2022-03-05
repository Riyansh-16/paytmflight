FROM openjdk

COPY target/flight-2.0.jar /opt
ENTRYPOINT ["java","-jar","flight-2.0.jar"]




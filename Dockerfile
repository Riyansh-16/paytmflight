FROM tomee

WORKDIR webapps
COPY target/*.jar   /

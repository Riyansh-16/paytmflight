FROM tomee

WORKDIR webapps
COPY target/*.jar   usr/local/tomee/webapps/app

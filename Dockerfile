FROM tomcat:8.0-alpine
MAINTAINER rohit.ramteke@citiustech.com
COPY target/LoginWebApp.war /usr/local/tomcat/webapps/
EXPOSE 8089
CMD ["catalina.sh", "run"]

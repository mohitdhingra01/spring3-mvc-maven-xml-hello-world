FROM tomcat:8.0-alpine
LABEL maintainer="mohit.dhingra@in.ibm.com"
ADD target/spring3-mvc-maven-xml-hello-world-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/spring3.war
RUN chmod 777 /usr/local/tomcat/webapps/spring3.war
EXPOSE 8080
CMD ["catalina.sh", "run"]

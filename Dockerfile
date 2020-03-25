FROM tomcat:8.0-alpine
RUN useradd tspring
RUN chown tspring:tspring /usr/local/tomcat
USER tspring
LABEL maintainer="mohit.dhingra@in.ibm.com"
ADD target/spring3-mvc-maven-xml-hello-world-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/spring3.war
RUN chown tspring:tspring /usr/local/tomcat
EXPOSE 8080
CMD ["catalina.sh", "run"]

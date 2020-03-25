FROM tomcat:8.0-alpine
LABEL maintainer="mohit.dhingra@in.ibm.com"
ADD deployments/ROOT.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]

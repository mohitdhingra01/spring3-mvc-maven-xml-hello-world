FROM tomcat:9.0-jre8

ENV RUN_USER            tomcat
ENV RUN_GROUP           tomcat
RUN groupadd -r ${RUN_GROUP} && useradd -g ${RUN_GROUP} -d ${CATALINA_HOME} -s /bin/bash ${RUN_USER}
RUN chown -R tomcat:tomcat $CATALINA_HOME
LABEL maintainer="mohit.dhingra@in.ibm.com"
ADD target/spring3-mvc-maven-xml-hello-world-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/spring3.war
EXPOSE 8080
CMD ["catalina.sh", "run"]


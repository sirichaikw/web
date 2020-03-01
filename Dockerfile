# Use latest CentOS image
FROM test/tomcat:9.0

MAINTAINER Sirichai Kiatwanitwilai

COPY ./target/Web.war /usr/local/tomcat/webapps/

ENV RUN_USER            tomcat
ENV RUN_GROUP           tomcat

# Add a tomcat user
RUN groupadd -r ${RUN_GROUP} && useradd -g ${RUN_GROUP} -d ${CATALINA_HOME} -s /bin/bash ${RUN_USER}
RUN chown -R tomcat:tomcat $CATALINA_HOME
RUN chmod 777 -R $CATALINA_HOME

EXPOSE 8080

CMD ["catalina.sh", "run"]

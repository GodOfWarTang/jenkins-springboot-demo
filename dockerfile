FROM java:8
EXPOSE 8080
ADD spring-data-security-demo-0.0.1-SNAPSHOT.jar security-demo.jar
RUN sh -c 'touch /security-demo.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS  -jar /security-demo.jar" ]

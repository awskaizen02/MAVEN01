FROM tomcat:9

COPY **/*.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["cataline.sh","run"]

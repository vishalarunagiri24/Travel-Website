FROM tomcat:9.0

# Clean the default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy everything from your webapp directory into the ROOT folder
COPY webapp/ /usr/local/tomcat/webapps/ROOT/

# Expose Tomcat's default internal port
EXPOSE 8080

# Start Tomcat in the foreground
CMD ["catalina.sh", "run"]

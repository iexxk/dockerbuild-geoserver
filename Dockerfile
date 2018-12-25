#基础镜像选择alpine 小巧安全流行方便
FROM exxk/tomcat:8-alpine-cst-font
COPY geoserver /usr/local/tomcat/webapps/geoserver
ENV GEOSERVER_HOME=/usr/local/tomcat/webapps/geoserver/data
CMD ["catalina.sh", "run"]


FROM java:8-jre-alpine

COPY worldwind-geoserver-0.5.0 /usr/share/geoserver

ENV GEOSERVER_HOME=/usr/share/geoserver
#ENV GEOSERVER_DATA_DIR=/usr/share/geoserver/data_dir

RUN apk add --no-cache tzdata ttf-dejavu \
            && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
            && echo "Asia/Shanghai" > /etc/timezone 

COPY chinese /usr/share/fonts/chinese

CMD ["sh","/usr/share/geoserver/bin/startup.sh"]

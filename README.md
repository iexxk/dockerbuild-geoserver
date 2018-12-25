# dockerbuild-geoserver
geoserver镜像构建

### 功能

* 支持宋体中文
* 支持跨域
* 支持MySQL
* 支持高层

### 使用

```yaml
  geoserver:
    restart: always
    image: 	exxk/geoserver:tomcat
    ports:
      - "14018:8080"
    volumes:
      - "/home/dockerdata/v-geoserver/data:/usr/local/tomcat/webapps/geoserver/data"
```


# dockerbuild-geoserver
geoserver镜像构建

### 功能

* 支持微软雅黑中文
* 支持跨域
* 支持MySQL
* 支持自带worldwind

### 使用

```yaml
  geoserver:
    restart: always
    image: 	exxk/geoserver:worldwind-jar
    ports:
      - "14018:8080"
    volumes:
      - "/home/dockerdata/v-geoserver/data:/usr/share/geoserver/webapps/geoserver/data"
```


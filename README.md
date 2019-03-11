# docker-smartdns
使用
```
docker pull ghostry/smartdns
docker container stop gsmartdns && docker container rm gsmartdns
docker run -d -p 53:53/udp --restart=always --name gsmartdns ghostry/smartdns
```
如果想自定义配置,可以使用`-v /data/smartdns:/smartdns`参数
tcp可以按需映射,一般都是用udp,增加tcp使用`-p 53:53`

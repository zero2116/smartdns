# docker-smartdns
**使用**
```
docker pull zero2116/smartdns
docker run -d -p 5353:5353/udp -p 6363:6363/udp --restart=always --name smartdns zero2116/smartdns
```

默认两个DNS服务，5353用来解析国内，6363用来解析国外

**介绍**

本项目使用https://github.com/pymumu/smartdns 提供的程序制作.

>SmartDNS是一个运行在本地的DNS服务器，SmartDNS接受本地客户端的DNS查询请求，从多个上游DNS服务器获取DNS查询结果，并将访问速度最快的结果返回给客户端，避免DNS污染，提高网络访问速度。 同时支持指定特定域名IP地址，并高性匹配，达到过滤广告的效果。

>与dnsmasq的all-servers不同，smartdns返回的是访问速度最快的解析结果。

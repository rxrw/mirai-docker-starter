<div align="center">
   <img width="160" src="https://github.com/mamoe/mirai/blob/dev/docs/mirai.png" alt="logo"></br>

   <img width="95" src="https://github.com/mamoe/mirai/blob/dev/docs/mirai.svg" alt="title">

----

[![Gitter](https://badges.gitter.im/mamoe/mirai.svg)](https://gitter.im/mamoe/mirai?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)
[![Actions Status](https://github.com/mamoe/mirai-api-http/workflows/Gradle%20CI/badge.svg)](https://github.com/mamoe/mirai-api-http/actions)

Mirai 是一个在全平台下运行，提供 QQ Android 和 TIM PC 协议支持的高效率机器人框架

这个项目的名字来源于
     <p><a href = "http://www.kyotoanimation.co.jp/">京都动画</a>作品<a href = "https://zh.moegirl.org/zh-hans/%E5%A2%83%E7%95%8C%E7%9A%84%E5%BD%BC%E6%96%B9">《境界的彼方》</a>的<a href = "https://zh.moegirl.org/zh-hans/%E6%A0%97%E5%B1%B1%E6%9C%AA%E6%9D%A5">栗山未来(Kuriyama <b>Mirai</b>)</a></p>
     <p><a href = "https://www.crypton.co.jp/">CRYPTON</a>以<a href = "https://www.crypton.co.jp/miku_eng">初音未来</a>为代表的创作与活动<a href = "https://magicalmirai.com/2019/index_en.html">(Magical <b>Mirai</b>)</a></p>
图标以及形象由画师<a href = "">DazeCake</a>绘制
</div>

# mirai-http-docker
Mirai HTTP Docker 一键启动环境

<b>Mirai-API-http插件 提供HTTP API供所有语言使用mirai</b>
<b>这个项目旨在对想直接用`Mirai-API-http`进行开发的同学们直接启动 Mirai + HTTP 服务</b>

## 玩法

一键启动：

```bash
docker run -p 8000:8000 reprover/mirai-http:latest
```

容器默认开 8000 端口，与 Mirai-HTTP-API 默认配置一致，有需要可以自己映射

建议使用 docker-compose 一键启动

脚本在代码里。

## 限制
### docker
docker 是容器服务，因此端口开放但网络出口是 docker 的 bridge 环境。

建议编写好的项目直接使用 docker-compose 同网络调用

也可将 network 的 mode 设置为 host 使用主机网卡。

### console
console启动的时候会下载
因此每一次 `docker-compose up` 启动的时候会从`gitee`下载最新的 `mirai`

> 本镜像版本与 mirai-console + mirai-http-api 版本共同更新

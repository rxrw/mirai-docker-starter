> 由于我的QQ不停地被封禁，因此无法支持此项目继续开发，欢迎大家使用Fork后的项目 😭

<div align="center">
   <img width="160" src="https://github.com/mamoe/mirai/blob/dev/docs/mirai.png" alt="logo"></br>

   <img width="95" src="https://github.com/mamoe/mirai/blob/dev/docs/mirai.svg" alt="title">

---

[![Gitter](https://badges.gitter.im/mamoe/mirai.svg)](https://gitter.im/mamoe/mirai?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)
[![Actions Status](https://github.com/mamoe/mirai-api-http/workflows/Gradle%20CI/badge.svg)](https://github.com/mamoe/mirai-api-http/actions)

Mirai 是一个在全平台下运行，提供 QQ Android 和 TIM PC 协议支持的高效率机器人框架

这个项目的名字来源于

<p><a href = "http://www.kyotoanimation.co.jp/">京都动画</a>作品<a href = "https://zh.moegirl.org/zh-hans/%E5%A2%83%E7%95%8C%E7%9A%84%E5%BD%BC%E6%96%B9">《境界的彼方》</a>的<a href = "https://zh.moegirl.org/zh-hans/%E6%A0%97%E5%B1%B1%E6%9C%AA%E6%9D%A5">栗山未来(Kuriyama <b>Mirai</b>)</a></p>
<p><a href = "https://www.crypton.co.jp/">CRYPTON</a>以<a href = "https://www.crypton.co.jp/miku_eng">初音未来</a>为代表的创作与活动<a href = "https://magicalmirai.com/2019/index_en.html">(Magical <b>Mirai</b>)</a></p>
图标以及形象由画师<a href = "">DazeCake</a>绘制

</div>
<br/>

# mirai-http-docker

Mirai HTTP Docker 一键启动环境

<b>Mirai-API-http 插件 提供 HTTP API 供所有语言使用 mirai</b>

<b>这个项目旨在对想直接用`Mirai-API-http`进行开发的同学们直接启动 Mirai + HTTP 服务</b>

## 玩法

一键启动：

```bash
# 生成配置文件
docker run --rm -it -v ./config:/app/config reprover/mirai-http:latest

#(如果需要其它插件，可以映射目录进去)
docker run --rm -it -v ./config:/app/config -v ./plugins:/app/plugins reprover/mirai-http:latest


#按自己需要修改配置然后运行
docker run -d -p 8080:8080 -v ./config:/app/config [-v ./plugins:/app/plugins] reprover/mirai-http:latest
```

容器默认开 8080 端口，与 Mirai-HTTP-API 默认配置一致，有需要可以自己映射

建议使用 [docker-compose](https://github.com/rxrw/mirai-docker-starter/blob/master/docker-compose.yml) 一键启动：

```bash
#第一次生成配置文件
docker-compose up

#修改配置文件
docker-compose up -d
```

## 当前版本

| 插件                 | 版本   | 源代码 |
| -------------------- | ------ | ---- |
| mirai-console-loader | 2.0.0  | <https://github.com/iTXTech/mirai-console-loader> |
| mirai-http-api       | 2.5.0 | <https://github.com/project-mirai/mirai-api-http> |
| mirai-core-all       | 2.10.1  | <https://github.com/project-mirai/mirai-repo-mirror> |

## 限制

### docker

docker 是容器服务，因此端口开放但网络出口是 docker 的 bridge 环境。

建议编写好的项目直接使用 docker-compose 同网络调用

也可将 network 的 mode 设置为 host 使用主机网卡。

### console

console 启动的时候会检查更新，目前已经把最新版 stable-2.7.0 内置了，有需要可以调整`config.json`。

### cli

由于是 docker 脚本，因此直接启动是启动的 `console` 无交互界面，如需进交互，可以

```bash
docker-compose exec mirai
```

不知道是什么原因，在非交互界面时使用 `docker run` 运行起来的进程关不掉，可以用 `docker kill` ，也可以在运行的时候使用 `docker run -it` 进入交互式界面。在 `docker-compose` 下是正常的。

> 本镜像版本与 mirai-console-loader + mirai-http-api 版本保持同步

### 说明

项目中的 `mcl` 是来自官方 `mirai-console-loader` 的 `github release`， plugins 目录下的 `mirai-http-api` 来自 `github release` 。

大家可以随意添加自己需要的插件进去。
~

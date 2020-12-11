# Laclede's LAN Warsow Freeplay Dedicated Server in Docker

![Laclede's LAN Warsow Freeplay Dedicated Server](https://raw.githubusercontent.com/LacledesLAN/gamesvr-warsow-freeplay/master/.misc/banner-warsow-freeplay.png "Laclede's LAN Warsow Freeplay Dedicated Server")

This repository is maintained by [Laclede's LAN](https://lacledeslan.com). Its contents are heavily tailored and tweaked for use at our charity LAN-Parties. For third-parties we recommend using this repo only as a reference example and then building your own using [gamesvr-warsow](https://github.com/LacledesLAN/gamesvr-warsow) as the base image for your customized server.

## Linux

![linux/amd64](https://github.com/LacledesLAN/gamesvr-warsow-freeplay/workflows/linux/amd64/badge.svg?branch=master)

### Download

```shell
docker pull lacledeslan/gamesvr-warsow-freeplay;
```

### Run Self Tests

The image includes a test script that can be used to verify its contents. No changes or pull-requests will be accepted to this repository if any tests fail.

```shell
docker run -it --rm lacledeslan/gamesvr-warsow-freeplay ./ll-tests/gamesvr-warsow-freeplay.sh;
```

### Run Interactive Server

```shell
docker run -it --rm --net=host lacledeslan/gamesvr-warsow-freeplay ./wsw_server +exec server.cfg +set dedicated 2 +sv_lan 1
```

## Getting Started with Game Servers in Docker

[Docker](https://docs.docker.com/) is an open-source project that bundles applications into lightweight, portable, self-sufficient containers. For a crash course on running Dockerized game servers check out [Using Docker for Game Servers](https://github.com/LacledesLAN/README.1ST/blob/master/GameServers/DockerAndGameServers.md). For tips, tricks, and recommended tools for working with Laclede's LAN Dockerized game server repos see the guide for [Working with our Game Server Repos](https://github.com/LacledesLAN/README.1ST/blob/master/GameServers/WorkingWithOurRepos.md). You can also browse all of our other  Dockerized game servers: [Laclede's LAN Game Servers Directory](https://github.com/LacledesLAN/README.1ST/tree/master/GameServers).

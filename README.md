# husarnet-sidecar-nvidia
Husarnet Sidecar but with a workaround for issues with ip6tables (eg. Nvidia Jetson)

> **Prerequisites** 
>
> I use the [latest compose file spec](https://github.com/compose-spec/compose-spec/blob/master/spec.md) (eg. no `version: "3.7"` on top of. `.yaml` file and using `compose.yaml` instead of `docker-compose.yaml`). Therefore make sure you use [Docker Compose V2](https://docs.docker.com/compose/cli-command/).
>
> Tested on the following host:
>
> ```bash
> $ docker --version
> Docker version 20.10.10, build b485636
> $ docker compose version
> Docker Compose version v2.2.3
> ```
>
> If you want to run it with older Docker-Compse, just add `version: '2.2'` on top of `compose.yaml` file (and rename it to `docker-compose.yaml`).

## Provide a Join Code

Rename `.env.template` to `.env` and paste your Husarnet Join Code there.

## Starting a demo

Just run:

```
docker compose up
```

In your laptop sitting in the same Husarnet network, open a demo Wordpress site running in Docker with Husarnet Sidecar namespace provided:

http://husarnet-container:80
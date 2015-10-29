# docker-alinode

> CentOS7 with Alinode

## Docker images

```
docker pull zensh/docker-alinode
```

## Build

```sh
docker build -t zensh/docker-alinode --rm=true .
```

or
```sh
make build
```

## Example usage

```sh
docker run --rm -ti zensh/docker-alinode sh -c 'node --version && npm --version && agentx -v'
```

or
```sh
make test
```

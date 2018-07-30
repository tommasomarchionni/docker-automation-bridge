# Overview
Docker container for https://github.com/giorgoxxi/automation-bridge

# Build
```
$ docker build --pull --rm --tag=automation-bridge .
```

# Usage
Mount service-config and user-config to use custom configurations, see example folders in this repo.
Container can be configured via env variables, see [Dockerfile](Dockerfile). Example: 
```
docker run \
-it \
-e SERVER_PORT=999 \
-v /host/folder/path/service-config:/usr/src/app/service-config \
tommasomarchionni/automation-bridge
```
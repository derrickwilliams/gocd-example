### official GoCD images
```sh
# https://hub.docker.com/r/gocd/gocd-server
docker pull gocd/gocd-server:v17.3.0
#https://hub.docker.com/r/gocd/gocd-agent-alpine-3.5
docker pull gocd/gocd-agent-alpine-3.5:v17.3.0
```

### useful commands
```sh
docker inspect --format='{{(index (index .NetworkSettings.IPAddress))}}' server
docker inspect --format='{{(index (index .NetworkSettings.Ports "8153/tcp") 0).HostPort}}' server
docker inspect --format='{{(index (index .NetworkSettings.Ports "8154/tcp") 0).HostPort}}' server
```
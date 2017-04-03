CONTAINER_NAME=$1


GOCD_SERVER_IP=`docker inspect --format='{{(index (index .NetworkSettings.IPAddress))}}' $CONTAINER_NAME`
GOCD_SERVER_PORT=`docker inspect --format='{{(index (index .NetworkSettings.Ports "8153/tcp") 0).HostPort}}' $CONTAINER_NAME`

echo "SERVER - ${GOCD_SERVER_IP:-'unknown'}:${GOCD_SERVER_PORT}"

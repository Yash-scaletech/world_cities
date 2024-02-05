DOCKER_BUILDKIT=1 docker build -t cities-api .
docker rm -f cities-api
docker run -d --network host --name=cities-api cities-api

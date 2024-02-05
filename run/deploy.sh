aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 249373568965.dkr.ecr.ap-south-1.amazonaws.com
docker pull 249373568965.dkr.ecr.ap-south-1.amazonaws.com/cities-api:latest
docker rm -f cities-api
docker run -d --network host --name=cities-api 249373568965.dkr.ecr.ap-south-1.amazonaws.com/cities-api:latest


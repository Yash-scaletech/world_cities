aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 249373568965.dkr.ecr.ap-south-1.amazonaws.com
docker build -t cities-api .
docker tag cities-api:latest 249373568965.dkr.ecr.ap-south-1.amazonaws.com/cities-api:latest
docker push 249373568965.dkr.ecr.ap-south-1.amazonaws.com/cities-api:latest
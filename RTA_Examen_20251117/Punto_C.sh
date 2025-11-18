sudo usermod -a -G docker jazmin
docker login -u jazminutn

vim dockerfile

docker build -t jazminutn/web1-luque:latest .
docker image list
docker push jazminutn/web1-luque:latest

docker run -d -p 80:80 jazminutn/web1-luque:latest


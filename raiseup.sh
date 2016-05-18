#!/bin/sh
sudo docker-compose up -d
PS=$(sudo docker ps | grep andriyun/d8-dev-web)
for word in $PS
do
  HASH=$word
  break;
done

sudo docker exec -it $HASH bash;

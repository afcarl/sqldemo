#!/bin/sh
CID=$(docker run -d testdb)
sleep 1
docker run -ti --net container:$CID testdb psql -h127.0.0.1 -Upostgres template1
docker kill $CID
docker rm $CID

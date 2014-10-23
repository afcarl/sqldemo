#!/bin/sh
fig build
fig -p sqldemo up
docker commit sqldemo_db_1 testdb

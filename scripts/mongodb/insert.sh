#!/bin/bash

cd /home/asier/PycharmProjects/grupal_as/scripts/mongodb/lua

sysbench  oltp-mongo.lua --tables=10 --threads=10 --table-size=100 --mongodb-db=db --mongodb-host=localhost --mongodb-port=27017 --time=120 --report-interval=1 --rand-type=pareto cleanup

sysbench oltp-mongo.lua --tables=10 --threads=10 --table-size=100 --mongodb-db=db --mongodb-host=localhost --mongodb-port=27017 --time=120 --report-interval=1 --rand-type=pareto prepare

sysbench oltp-mongo.lua --tables=10 --threads=10 --table-size=100 --mongodb-db=db --mongodb-host=localhost --read-only=on --mongodb-port=27017 --time=10 --forced-shutdown=10 --report-interval=1 --rand-type=pareto run
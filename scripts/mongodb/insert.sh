#!/bin/bash
sysbench
--mongo-write-concern=1
--mongo-url="mongodb://localhost"
--mongo-database-name=sbtest
--test=sysbench/sysbench/tests/mongodb/oltp.lua
--oltp_table_size=60000000
--oltp_tables_count=16
--num-threads=512
--rand-type=pareto
--report-interval=10
--max-requests=0
--max-time=600
--oltp-point-selects=10
--oltp-simple-ranges=1
--oltp-sum-ranges=1
--oltp-order-ranges=1
--oltp-distinct-ranges=1
--oltp-index-updates=1
--oltp-non-index-updates=1
--oltp-inserts=1 run
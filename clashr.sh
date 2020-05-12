#!/bin/bash
rm -rf /home/rewrite/scripts/log/clashr.log
nohup /home/rewrite/prog/clashr/clashr-v0.19.0.2 > /home/rewrite/scripts/log/clashr.log 2>&1 &
sleep 3
cat /home/rewrite/scripts/log/clashr.log

#!/bin/bash
rm -rf ~/scripts/log/clashr.log
nohup ~/prog/clashr/clashr-v0.19.0.2 > ~/scripts/log/clashr.log 2>&1 &
sleep 3
cat ~/scripts/log/clashr.log

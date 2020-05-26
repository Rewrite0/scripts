#!/bin/bash
#########################################################################
# File Name: img-compression.sh
# Created Time: 2020年05月25日 星期一 09时10分32秒
#########################################################################
find . -name "*.jpg" | xargs jpegoptim
find . -name "*.png" | xargs optipng

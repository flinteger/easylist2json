#!/bin/sh

rm -f top-1m.csv.zip top-1m.csv data/top1m.domains
wget -q http://s3-us-west-1.amazonaws.com/umbrella-static/top-1m.csv.zip
unzip -q top-1m.csv.zip
awk -F, '{ print $2 }' top-1m.csv > data/top1m.domains
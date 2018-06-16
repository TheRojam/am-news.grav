#! /bin/sh
awk '/post_content:/{content=$0} /post_name:/{print content>$2".yaml"; close($2".yaml")}' posts.yaml
 
for file in *; do mv "$file" $(echo "$file" | sed -e 's/[^A-Za-z0-9.-]//g'); done &


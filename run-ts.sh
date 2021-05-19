#! /bin/bash 
OLD_IFS="$IFS"
IFS="."
arr=($1)
if [ ${#arr[@]} == 2 ]
  then tsc "$1" && node "${arr[0]}.js"
else 
  tsc "$1ts"
  node "$1js"
fi
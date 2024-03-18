#!/bin/bash

# Params as single string
echo "all params: $*"

# Total number of arguments provided
echo "nubmer of params: $#"

for param in $*
  do
    if [ -d "$param" ]
    then
      echo "executing scripts in the config folder"
      ls -l "$param"
    fi
  done

sum=0
while true
  do
    read -r -p "enter a score: " score

    if [ "$score" == "q" ]
    then
      break
    fi

    sum=$((sum+score))
    echo "total score: $sum"

  done
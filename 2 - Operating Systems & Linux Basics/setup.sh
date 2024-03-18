#!/bin/bash

# Params as single string
# echo "all params: $*"

# Total number of arguments provided
# echo "nubmer of params: $#"

for param in $*
  do
    if [ -d "$param" ]
    then
      echo "executing scripts in the config folder"
      ls -l "$param"
    fi
  done


function score_sum {
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
}


function create_file() {
  file_name=$1
  is_shell_script=$2
  touch "$file_name"
  echo "file $file_name created"

  if [ "$is_shell_script" = true ]
  then
    chmod u+x "$file_name"
    echo "added execute permission"
  fi
}

create_file test.txt

create_file myfile.yaml

create_file myscript.sh true
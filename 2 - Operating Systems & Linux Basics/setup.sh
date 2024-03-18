#!/bin/bash

echo "Setup and configure server"

file_name=config.yaml

if [ -d "config" ]
then
  echo "reading config directory contents"
  config_files=$(ls config)
else
  echo "config dir not found. Creating one"
  mkdir config
fi

user_group=admin

if [ $user_group == "alex" ]
then
  echo "configure the server"
elif [ $user_group == "admin" ]
then
  echo "administer the server"
else
  echo "No permission to configure sever. Wrong user group"
fi


echo "using file $file_name to configure something"

echo "here are all configuration files: $config_files"

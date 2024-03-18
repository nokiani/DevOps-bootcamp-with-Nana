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

echo "using file $file_name to configure something"

echo "here are all configuration files: $config_files"

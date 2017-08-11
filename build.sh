#!/bin/bash

PKG_VERSION="0.0.1"
CONTAINER_NAME="keydotco/circle-ci-general-build"

echo "building $CONTAINER_NAME:$PKG_VERSION"
docker build -t $CONTAINER_NAME:$PKG_VERSION .

while getopts ":p" opt; do
  case $opt in 
    p)
      echo "push was triggered!" >&2
      docker push $CONTAINER_NAME:$PKG_VERSION
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done
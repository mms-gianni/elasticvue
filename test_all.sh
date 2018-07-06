#!/bin/bash

set -e

docker info > /dev/null
if [ $? -ne 0 ]; then
    echo "Docker is not running. Please start docker and run this script again"
    exit 1
fi

# prepare
rm -rf node_modules
rm -rf dist
yarn install

# Run specs
yarn test

# Build for production
yarn build

# build chrome extension
yarn build_chrome_extension

# Try to build docker container
docker build --no-cache -t elasticvue .
#!/bin/bash
set -e
echo "Logging in to docker hub"
docker login
echo "Building sqlite image"
docker build --no-cache -t imiell/sqlite .
echo "Pushing sqlite image"
docker push imiell/sqlite

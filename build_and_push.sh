#!/bin/bash
docker login
docker build --no-cache -t imiell/sqlite .
docker push imiell/sqlite

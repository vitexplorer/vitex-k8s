#!/usr/bin/env bash

tar xzf gvite-v2.11.1-linux.tar.gz
docker build -t govite -f Dockerfile .
docker tag govite:latest yourdockerrepo/govite:1.0
docker push yourdockerrepo/govite:1.0

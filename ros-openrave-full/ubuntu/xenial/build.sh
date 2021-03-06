#!/bin/bash
set -e
VER=0.9.0
TAG=ros-openrave-full
REGISTRY=fsuarez6

set -eu
# Build
docker build -t ${TAG} .
# Tag
docker tag ${TAG} ${REGISTRY}/${TAG}:${VER}
docker tag ${TAG} ${REGISTRY}/${TAG}:latest

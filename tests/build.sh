#!/usr/bin/env bash
cp -r ./17/rhel/ubi9/hotspot/* ./
sed -i "s~https://get.jenkins.io/~https://get.jenkins.io/war~g" ./Dockerfile
docker buildx build . --output type=docker,name=elestio4test/jenkins:latest | docker load
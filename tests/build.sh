#!/usr/bin/env bash
sed -i "s~https://get.jenkins.io/~https://get.jenkins.io/war~g" ./17/rhel/ubi9/hotspot/Dockerfile
docker build -f ./17/rhel/ubi9/hotspot/Dockerfile . --tag elestio4test/jenkins:latest
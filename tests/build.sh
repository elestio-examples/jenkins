#!/usr/bin/env bash
sed -i "s~-jdk-alpine~-jdk-centos7~g" ./17/alpine/hotspot/Dockerfile
sed -i "s~ARG RELEASE_LINE~ARG RELEASE_LINE=war~g" ./17/alpine/hotspot/Dockerfile
docker build -f 17/alpine/hotspot/Dockerfile . --tag elestio4test/jenkins:latest
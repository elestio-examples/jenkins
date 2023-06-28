#!/usr/bin/env bash
docker build --build-arg RELEASE_LINE=war -f 17/alpine/hotspot/Dockerfile . --tag elestio4test/jenkins:latest

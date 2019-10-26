#!/usr/bin/env bash

VER=$(grep "version" image.properties|cut -d'=' -f2)  && \
  docker build -t circulo7/adoptopenjdk-w4i:$VER . && \
  git release $VER && \
  docker push circulo7/adoptopenjdk-w4i:$VER && \
  echo "done"




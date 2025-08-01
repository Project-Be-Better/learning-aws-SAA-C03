FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    curl zip unzip \
    python3 python3-pip \
    nodejs npm \
    awscli \
    terraform \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
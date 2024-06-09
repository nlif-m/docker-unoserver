#!/bin/sh

docker build \
	-t unoserver:latest \
	-f Dockerfile \
	.

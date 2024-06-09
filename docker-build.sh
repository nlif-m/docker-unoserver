#!/bin/sh

docker build \
	-t unoconv:latest \
	-f Dockerfile \
	--no-cache \
	.

FROM docker.io/library/alpine:3.20

RUN --mount=type=cache,target=/var/cache/apk \
	apk add \
    --cache-dir /var/cache/apk \
	libreoffice-writer \
	python3 \
	py3-pip \
    curl \
	openjdk8-jre

RUN --mount=type=cache,target=/root/.cache  pip3 install --break-system-packages unoserver

# libreoffice port
EXPOSE 2002 
# unoserver xmlrpc
EXPOSE 2003 
ENTRYPOINT ["unoserver"]


FROM docker.io/library/alpine:3.20


RUN apk add --no-cache \
  libreoffice-writer \
  python3 \
  py3-pip \
  openjdk8-jre

RUN pip3 install --break-system-packages unoserver

# libreoffice port
EXPOSE 2002 
# unoserver xmlrpc
EXPOSE 2003 
ENTRYPOINT ["unoserver"]


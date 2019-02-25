FROM ubuntu:bionic
LABEL maintainer "Taichi MIYA <tmiya@protonmail.ch>"

RUN apt-get -y upgrade && \
    apt-get install -y kea-dhcp4-server kea-admin

ENTRYPOINT ['kea-dhcp4', '-c', '/etc/kea/kea-dhcp4.conf']

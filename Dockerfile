FROM ubuntu

COPY ./lab2.asm /home/lab2/lab2.asm

COPY ./script.sh /home/lab2/script.sh

RUN apt-get update -y

RUN apt-get install -y nasm

RUN apt-get install -y nano

RUN apt-get install -y --reinstall binutils

RUN apt-get install -y gdb

ENTRYPOINT /bin/bash
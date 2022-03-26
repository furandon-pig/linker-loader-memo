#!/bin/sh

qemu-system-x86_64 \
    -m 512M \
    -boot order=c \
    -nic user,hostfwd=tcp::2222-:22,hostfwd=tcp::8888-:80 \
    -hdd freebsd.img


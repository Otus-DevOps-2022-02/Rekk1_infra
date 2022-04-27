#!/bin/sh
yc compute instance create reddit-full \
--public-ip \
--create-boot-disk image-id=fd8tip167kh9c3l0n5ja \
--ssh-key ~/.ssh/appuser.pub

#!/bin/sh
#
# 2.4.1 works
#
${THOME}/build/unpack qemu-2.4.1
cd qemu-2.4.1
bash ./configure --prefix=/usr/versions/qemu-2.4 \
 --target-list="i386-softmmu x86_64-softmmu sparc-softmmu sparc64-softmmu arm-softmmu" \
 --cc=gcc --cxx=g++ --objcc=gcc --smbd=/usr/sbin/smbd --disable-gtk \
--enable-sdl --with-coroutine=gthread
gsed -i '/LIBS += -lutil/d' tests/Makefile
gsed -i '/CONFIG_EVENTFD/d' config-host.mak
gmake -j 8
${THOME}/build/genpkg TRIBqemu

#
# 2.5 doesn't work
#
# ${THOME}/build/unpack qemu-2.5.0
# cd qemu-2.5.0
# bash ./configure --prefix=/usr/versions/qemu-2.5 \
#  --target-list="i386-softmmu x86_64-softmmu sparc-softmmu sparc64-softmmu arm-softmmu" \
#  --cc=gcc --cxx=g++ --objcc=gcc --smbd=/usr/sbin/smbd --disable-gtk \
# --disable-gcrypt --disable-nettle --enable-sdl --with-coroutine=gthread
# gsed -i '/LIBS += -lutil/d' tests/Makefile
# gsed -i '/CONFIG_EVENTFD/d' config-host.mak
# So Linux. Much bug. Very crap. Wow.
# gsed -i s:sun_:SSS:g contrib/ivshmem*/*
# gsed -i s:sun:ssun:g contrib/ivshmem*/*
# gsed -i s:SSS:sun_:g contrib/ivshmem*/*
# gsed -i 's:#define defreg:#undef SEC\n#define defreg:' hw/net/e1000.c
# gmake -j 8
# rm -fr /tmp/q
# gmake install DESTDIR=/tmp/q
# [doesn't work, immediately trips an assert]
# ${THOME}/build/create_pkg TRIBqemu /tmp/q
# rm -fr /tmp/q

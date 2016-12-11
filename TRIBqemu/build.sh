#!/bin/sh
#
# 2.4 works, 2.5 doesn't, 2.6 seems OK, 2.7 doesn't
#
${THOME}/build/unpack qemu-2.6.2
cd qemu-2.6.2
env PKG_CONFIG_PATH=/usr/lib/amd64/pkgconfig bash ./configure --prefix=/usr/versions/qemu-2.6 \
 --target-list="i386-softmmu x86_64-softmmu sparc-softmmu sparc64-softmmu arm-softmmu" \
 --cc=gcc --cxx=g++ --objcc=gcc --smbd=/usr/sbin/smbd --disable-gtk \
--disable-gcrypt --disable-nettle --enable-sdl --with-coroutine=gthread
gsed -i '/LIBS += -lutil/d' tests/Makefile
gsed -i '/CONFIG_EVENTFD/d' config-host.mak
# remove ivshmem for the list of tools in config-host.mak
gsed -i 's:#define defreg:#undef SEC\n#define defreg:' hw/net/e1000.c
gsed -i s:queue:qqueue:g memory.c
gmake -j 8

${THOME}/build/genpkg TRIBqemu

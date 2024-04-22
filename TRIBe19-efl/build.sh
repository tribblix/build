#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_LDFLAGS="-lsocket -lnsl -z muldefs" $THOME/build/dobuild -64only efl-1.21.1 -C "--with-profile=release --disable-pulseaudio --enable-fribidi --enable-harfbuzz --disable-libeeze --enable-lua-old --disable-cserve --enable-physics --disable-systemd --enable-i-really-know-what-i-am-doing-and-that-this-will-probably-break-things-and-i-will-fix-them-myself-and-send-patches-abb"
${THOME}/build/genpkg TRIBe19-efl efl-1.21.1

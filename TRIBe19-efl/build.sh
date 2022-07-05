#!/bin/sh
#
$THOME/build/dobuild -64 efl-1.18.5 -C "--with-profile=release --disable-pulseaudio --enable-fribidi --enable-harfbuzz --disable-libeeze --enable-lua-old --disable-cserve --enable-physics --disable-systemd --enable-i-really-know-what-i-am-doing-and-that-this-will-probably-break-things-and-i-will-fix-them-myself-and-send-patches-abb"
${THOME}/build/genpkg TRIBe19-efl efl-1.18.5

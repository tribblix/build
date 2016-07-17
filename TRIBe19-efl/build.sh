#!/bin/sh
#
zap install TRIBgiflib
zap install TRIBlibsndfile
zap install TRIBbullet
${THOME}/build/dobuild efl-1.12.3 -C "--disable-pulseaudio --enable-lua-old --enable-i-really-know-what-i-am-doing-and-that-this-will-probably-break-things-and-i-will-fix-them-myself-and-send-patches-aba"
${THOME}/build/genpkg TRIBe19-efl efl-1.12.3

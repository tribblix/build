#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# I think space inserts a coin; i iconifies; mouse left and right. It
# runs way too fast to play, for me. xboing -speed 1 is about right...
#
${THOME}/build/unpack xboing2.4
cd xboing
rm -f audio.c ; ln -s audio/NOaudio.c audio.c
make -f Makefile.std AUDIO_AVAILABLE=False XBOING_DIR=/usr/share/xboing
gcc -fstrength-reduce -fpcc-struct-return -o xboing -g -L/usr/X11/lib version.o main.o score.o error.o ball.o blocks.o init.o stage.o level.o paddle.o mess.o intro.o bonus.o sfx.o highscore.o misc.o inst.o gun.o keys.o audio.o special.o presents.o demo.o file.o preview.o dialogue.o eyedude.o editor.o keysedit.o -L/usr/X11/lib -lXpm -lXext -lX11 -lm -B/usr/bin/
rm -fr `find . -name CVS`
rm -fr /tmp/xb
mkdir -p /tmp/xb/usr/bin
mkdir -p /tmp/xb/usr/share/xboing
mkdir -p /tmp/xb/usr/share/man/man6
cp -r levels /tmp/xb/usr/share/xboing
cp -r docs /tmp/xb/usr/share/xboing
cp -r bitmaps /tmp/xb/usr/share/xboing
cp xboing /tmp/xb/usr/bin
cp COPYRIGHT /tmp/xb/usr/share/xboing
cp xboing.man /tmp/xb/usr/share/man/man6/xboing.6
${THOME}/build/create_pkg TRIBxboing /tmp/xb

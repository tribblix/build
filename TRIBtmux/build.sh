#!/bin/sh
#
# tmux/libevent
# built a la omnios
# [no, I don't understand how --disable-static works...]
${THOME}/build/dobuild +64only libevent-2.1.11-stable -C "--disable-static --disable-libevent-install"
env CPPFLAGS="-I`pwd`/libevent-2.1.11-stable-64bit/include -I`pwd`/libevent-2.1.11-stable-64bit/include/event2" TRIBBLIX_LDFLAGS="-L`pwd`/libevent-2.1.11-stable-64bit/.libs -lsocket -lnsl -lsendfile" ${THOME}/build/dobuild -64only tmux-3.3a
${THOME}/build/genpkg TRIBtmux tmux-3.3a
rm -fr libevent-2.1.11-stable-64bit

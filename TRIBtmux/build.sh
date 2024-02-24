#!/bin/sh
#
# tmux needs a sacrificial libevent
#
${THOME}/build/dobuild +64only libevent-2.1.12-stable -C "--enable-static --disable-shared --disable-libevent-install"
env CPPFLAGS="-I`pwd`/libevent-2.1.12-stable-64bit/include -I`pwd`/libevent-2.1.12-stable-64bit/include/event2" TRIBBLIX_LDFLAGS="-L`pwd`/libevent-2.1.12-stable-64bit/.libs -lsocket -lnsl -lsendfile" ${THOME}/build/dobuild -64only tmux-3.4
${THOME}/build/genpkg TRIBtmux tmux-3.4
rm -fr libevent-2.1.12-stable-64bit

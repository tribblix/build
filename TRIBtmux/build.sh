#!/bin/sh
#
# tmux/libevent
# built a la omnios
# [no, I don't understand how --disable-static works...]
${THOME}/build/dobuild libevent-2.0.22-stable -C "--disable-static --disable-libevent-install"
env CPPFLAGS="-I`pwd`/libevent-2.0.22-stable/include -I`pwd`/libevent-2.0.22-stable/include/event2" TRIBBLIX_LDFLAGS="-L`pwd`/libevent-2.0.22-stable/.libs -lsocket -lnsl -lsendfile" ${THOME}/build/dobuild tmux-2.3
${THOME}/build/genpkg TRIBtmux tmux-2.3

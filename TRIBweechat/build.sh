#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# need -lresolv -lsocket -lnsl for res_init
# there's a preconf script to help it find ncurses in the first place
#
env TRIBBLIX_CFLAGS="-I/usr/gnu/include -D_XPG6 -D__EXTENSIONS__" TRIBBLIX_LDFLAGS="-L/usr/gnu/lib/`$THOME/build/getarch` -R/usr/gnu/lib/`$THOME/build/getarch` -liconv -lresolv -lsocket -lnsl" ${THOME}/build/cmbuild -gnu -64only weechat-4.7.2 -C "-DENABLE_CJSON=OFF -DENABLE_PHP=OFF -DENABLE_PYTHON=OFF -DENABLE_RUBY=OFF -DENABLE_LUA=OFF -DENABLE_GUILE=OFF"
${THOME}/build/genpkg TRIBweechat weechat-4.7.2

#!/bin/sh
#
#
#
${THOME}/build/unpack gkrellm-2.3.7
cd gkrellm-2.3.7
gsed -i s:/usr/ucb/install:/usr/bin/ginstall: */Makefile
gsed -i s:chgrp:true: */Makefile
gsed -i 's:lsocket -lX11:lsocket -lnsl -lX11:' Makefile
gmake solaris LOCALEDIR=/usr/share/locale
rm -fr /tmp/gk
gmake install_solaris INSTALL=ginstall DESTDIR=/tmp/gk PREFIX=/usr
${THOME}/build/create_pkg TRIBgkrellm /tmp/gk
rm -fr /tmp/gk

#!/bin/sh
#
#
#
${THOME}/build/unpack gkrellm-2.3.11
cd gkrellm-2.3.11
sed -i s:/usr/ucb/install:/usr/bin/ginstall: */Makefile
sed -i s:chgrp:true: */Makefile
sed -i 's:lsocket -lX11:lsocket -lnsl -lX11:' Makefile
gmake solaris LOCALEDIR=/usr/share/locale
rm -fr /tmp/gk
gmake install_solaris INSTALL=ginstall DESTDIR=/tmp/gk PREFIX=/usr
${THOME}/build/create_pkg TRIBgkrellm /tmp/gk
rm -fr /tmp/gk

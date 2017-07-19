#!/bin/sh
#
env LIBS="-lsocket -lnsl" CPPFLAGS="-DBSD_COMP -D__EXTENSIONS__" TRIBBLIX_CFLAGS="-Wno-error=format" ${THOME}/build/dobuild hitch-1.4.6 -P /opt/tribblix/hitch -C --with-rst2man=/usr/versions/python-2.7/bin/rst2man.py
${THOME}/build/genpkg TRIBblix-hitch hitch-1.4.6

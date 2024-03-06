#!/bin/sh
#
env TRIBBLIX_LDFLAGS="-R/opt/tribblix/postgres15/lib -lsocket -lnsl" TRIBBLIX_CFLAGS=-D__EXTENSIONS__ PATH=/opt/tribblix/postgres15/bin:$PATH $THOME/build/dobuild -64only -S src pgbackrest-release-2.50
sed -i 's:install -:ginstall -:' pgbackrest-release-2.50-64bit/src/Makefile
${THOME}/build/genpkg TRIBpgbackrest pgbackrest-release-2.50

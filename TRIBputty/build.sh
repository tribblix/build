#!/bin/sh
#
# putty
#
env TRIBBLIX_LDFLAGS="-lsocket -lnsl" $THOME/build/cmbuild -64only putty-0.80
${THOME}/build/genpkg TRIBputty putty-0.80

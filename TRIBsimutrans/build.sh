#!/bin/sh
#
# patch to avoid using the native type of label_t
#
env TRIBBLIX_LDFLAGS="-lsocket -lnsl" $THOME/build/cmbuild -64only https://github.com/aburch/simutrans

${THOME}/build/genpkg TRIBsimutrans simutrans

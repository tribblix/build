#!/bin/sh
#
# libvncserver
#
env LDFLAGS="-lsocket -lnsl" TRIBBLIX_LDFLAGS="-lsocket -lnsl" ${THOME}/build/cmbuild -64 libvncserver-LibVNCServer-0.9.14
${THOME}/build/genpkg TRIBlibvncserver libvncserver-LibVNCServer-0.9.14

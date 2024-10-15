#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# libvncserver
#
env LDFLAGS="-lsocket -lnsl" TRIBBLIX_LDFLAGS="-lsocket -lnsl" ${THOME}/build/cmbuild -64only libvncserver-LibVNCServer-0.9.14
${THOME}/build/genpkg TRIBlibvncserver libvncserver-LibVNCServer-0.9.14

#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_LDFLAGS="-lsocket -lnsl" $THOME/build/cmbuild -64only putty-0.82
${THOME}/build/genpkg TRIBputty putty-0.82

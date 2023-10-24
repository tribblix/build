#!/bin/sh
#
# needs TRIBlibsdl2
#
# current requires charconv, but doen't check for it - that came in with gcc8
# so we need to be downrev on sparc which only has gcc7
#
env TRIBBLIX_LDFLAGS="-lsocket -lnsl" $THOME/build/cmbuild openttd-13.4
$THOME/build/genpkg TRIBopenttd openttd-13.4

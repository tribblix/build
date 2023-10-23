#!/bin/sh
#
# needs TRIBlibsdl2
#
env TRIBBLIX_LDFLAGS="-lsocket -lnsl" $THOME/build/cmbuild openttd-13.4
$THOME/build/genpkg TRIBopenttd openttd-13.4

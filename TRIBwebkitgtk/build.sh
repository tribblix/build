#!/bin/sh
#
# use the OI patches, which is why it's downrev to start with
#
env TRIBBLIX_LDFLAGS="-lm -lsocket" LDFLAGS="-lm -lsocket"  ${THOME}/build/cmbuild -64 webkitgtk-2.32.4 -C "-DPORT=GTK -DUSE_WPE_RENDERER=NO -DENABLE_GAMEPAD=NO -DUSE_WOFF2=NO -DUSE_SYSTEMD=NO -DENABLE_INTROSPECTION=NO" -J 12
${THOME}/build/genpkg TRIBwebkitgtk webkitgtk-2.32.4

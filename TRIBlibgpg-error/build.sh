#!/bin/sh
#
# gpg-error
#
env TRIBBLIX_LDFLAGS="-lsocket -lnsl" ${THOME}/build/dobuild -64 libgpg-error-1.32
${THOME}/build/genpkg TRIBlibgpg-error libgpg-error-1.32

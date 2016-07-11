#!/bin/sh
#
# pkg-config 0.28 (0.29 is borked)
#
${THOME}/build/dobuild pkg-config-0.28 -C --with-internal-glib
${THOME}/build/genpkg TRIBpkg-config pkg-config-0.28

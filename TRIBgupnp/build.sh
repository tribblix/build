#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# gupnp [needs gssdp]
#

#
# the compile might fail, but that's not serious, and can be avoided
# by uninstalling xsltproc
#
env TRIBBLIX_LDFLAGS=-lsocket ${THOME}/build/mesonbuild -64only gupnp-1.6.10
${THOME}/build/genpkg TRIBgupnp gupnp-1.6.10

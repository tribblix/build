#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# gupnp [needs gssdp]
#
# stay downrev; 1.0.7 requires GLib2 2.66
#
${THOME}/build/dobuild -64only gupnp-1.0.6 -C "UUID_CFLAGS=-I/usr/include/uuid UUID_LIBS=-luuid --disable-introspection --disable-dependency-tracking"
${THOME}/build/genpkg TRIBgupnp gupnp-1.0.6

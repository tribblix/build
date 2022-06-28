#!/bin/sh
#
# gupnp [needs gssdp]
#
# stay downrev; 1.0.7 for example requires GLib2 2.66
#
${THOME}/build/dobuild -64 gupnp-1.0.3 -C "UUID_CFLAGS=-I/usr/include/uuid UUID_LIBS=-luuid --disable-introspection"
${THOME}/build/genpkg TRIBgupnp gupnp-1.0.3

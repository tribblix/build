#!/bin/sh
#
# gupnp [needs gssdp]
#
${THOME}/build/dobuild -64 gupnp-1.0.2 -C "UUID_CFLAGS=-I/usr/include/uuid UUID_LIBS=-luuid --disable-introspection"
${THOME}/build/genpkg TRIBgupnp gupnp-1.0.2

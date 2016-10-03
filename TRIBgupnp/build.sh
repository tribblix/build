#!/bin/sh
#
# gupnp [needs gssdp]
#
${THOME}/build/dobuild gupnp-1.0.0 -C "UUID_CFLAGS=-I/usr/include/uuid UUID_LIBS=-luuid --disable-introspection"
${THOME}/build/genpkg TRIBgupnp gupnp-1.0.0

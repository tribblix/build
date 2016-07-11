#!/bin/sh
#
# gupnp [needs gssdp]
#
${THOME}/build/dobuild gupnp-0.20.14 -C "UUID_CFLAGS=-I/usr/include/uuid UUID_LIBS=-luuid"
${THOME}/build/genpkg TRIBgupnp gupnp-0.20.14

#!/bin/sh
#
# need --disable-quality-check as otherwise it's confused by type conversions
#
env LDFLAGS=-R/usr/lib/mps LIBS=-lsocket ${THOME}/build/dobuild -gnu pidgin-sipe-1.25.0 -C "--with-krb5=no --disable-quality-check"
${THOME}/build/genpkg TRIBpidgin-sipe pidgin-sipe-1.25.0

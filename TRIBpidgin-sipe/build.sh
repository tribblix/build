#!/bin/sh
#
env LDFLAGS=-R/usr/lib/mps LIBS=-lsocket ${THOME}/build/dobuild -gnu pidgin-sipe-1.22.0 -C "--with-krb5=no"
${THOME}/build/genpkg TRIBpidgin-sipe pidgin-sipe-1.22.0

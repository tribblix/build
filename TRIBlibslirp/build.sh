#!/bin/sh
#
env TRIBBLIX_LDFLAGS=-lsocket $THOME/build/mesonbuild +64 libslirp-v4.7.0
${THOME}/build/genpkg TRIBlibslirp libslirp-v4.7.0

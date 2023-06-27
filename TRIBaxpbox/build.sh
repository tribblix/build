#!/bin/sh
#
env TRIBBLIX_LDFLAGS=-lsocket ${THOME}/build/cmbuild https://github.com/lenticularis39/axpbox
${THOME}/build/genpkg TRIBaxpbox axpbox

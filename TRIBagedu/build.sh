#!/bin/sh
#
env TRIBBLIX_LDFLAGS=-lsocket $THOME/build/cmbuild -64only agedu-20211129.8cd63c5
${THOME}/build/genpkg TRIBagedu agedu-20211129.8cd63c5

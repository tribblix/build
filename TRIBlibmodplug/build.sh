#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_CFLAGS=-O $THOME/build/dobuild -64only https://github.com/christopho/libmodplug
${THOME}/build/genpkg TRIBlibmodplug libmodplug

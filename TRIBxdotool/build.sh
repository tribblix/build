#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env PREFIX=/usr CC=gcc LDFLAGS=-m64 CFLAGS="-m64 -O -D__EXTENSIONS__" ${THOME}/build/dobuild -64only xdotool-3.20211022.1
env PREFIX=/usr CC=gcc LDFLAGS=-m64 CFLAGS="-m64 -O -D__EXTENSIONS__" ${THOME}/build/genpkg -gnu TRIBxdotool xdotool-3.20211022.1

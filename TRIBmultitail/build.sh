#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# can download the tarball from the tags on github
#
${THOME}/build/dobuild multitail-7.1.3 -M "-f makefile.solaris_gcc EXTRA_CFLAGS=-m64 EXTRA_LDFLAGS=-m64"
${THOME}/build/genpkg -M "-f makefile.solaris_gcc" TRIBmultitail multitail-7.1.3

#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Types-Serialiser-1.01
cd Types-Serialiser-1.01
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-types-serialiser Types-Serialiser-1.01

#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Exporter-Tiny-1.006003
cd Exporter-Tiny-1.006003
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-exporter-tiny Exporter-Tiny-1.006003

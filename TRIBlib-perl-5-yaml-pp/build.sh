#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack YAML-PP-v0.38.0
cd YAML-PP-v0.38.0
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-yaml-pp YAML-PP-v0.38.0

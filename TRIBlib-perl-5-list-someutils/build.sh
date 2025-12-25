#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this builds and packages *both* parts together, the vanilla and XS
#
${THOME}/build/unpack List-SomeUtils-XS-0.58
cd List-SomeUtils-XS-0.58
perl Makefile.PL
make
cd ..
${THOME}/build/unpack List-SomeUtils-0.59
cd List-SomeUtils-0.59
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-list-someutils List-SomeUtils-0.59 List-SomeUtils-XS-0.58
echo "Now install and rebuild a second time"

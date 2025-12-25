#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this builds and packages *both* parts together, the vanilla and XS
#
${THOME}/build/unpack List-MoreUtils-XS-0.430
cd List-MoreUtils-XS-0.430
perl Makefile.PL
make
cd ..
${THOME}/build/unpack List-MoreUtils-0.430
cd List-MoreUtils-0.430
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-list-moreutils List-MoreUtils-XS-0.430 List-MoreUtils-0.430
echo "Now install and rebuild a second time"

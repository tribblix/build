#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# some of the archives are doubly gzipped, so you need to gunzip them
# and rename with the gz suffix
#
# later versions have changed some symbols from global to local
# so need to be conservative regarding updates
#
# and the 7.2x tarballs were all copies of gc-7.2, so need to
# rm gc-7.2.tar.gz; ln -s gc-7.2g.tar.gz gc-7.2.tar.gz
#
${THOME}/build/dobuild -64only gc-8.2.8
${THOME}/build/genpkg TRIBboehm-gc gc-8.2.8

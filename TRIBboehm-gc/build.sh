#!/bin/sh
#
# some of the archives are doubly gzipped, so you need to gunzip them
# and rename with the gz suffix
#
# later versions have removed some symbols from the library
# so I've been very conservative regarding updates
#
# and the 7.2x tarballs are all copies of gc-7.2, so need to
# rm gc-7.2.tar.gz; ln -s gc-7.2g.tar.gz gc-7.2.tar.gz
#
env TRIBBLIX_CFLAGS=-fcommon ${THOME}/build/dobuild -64only gc-7.2
${THOME}/build/genpkg TRIBboehm-gc gc-7.2

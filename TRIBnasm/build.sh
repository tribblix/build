#!/bin/sh
#
${THOME}/build/dobuild nasm-2.13.03
cd nasm-2.13.03
rm -fr /tmp/nn
gmake install INSTALLROOT=/tmp/nn
${THOME}/build/create_pkg TRIBnasm /tmp/nn
rm -fr /tmp/nn
cd ..

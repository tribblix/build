#!/bin/sh
#
${THOME}/build/dobuild nasm-2.11.08
cd nasm-2.11.08
rm -fr /tmp/nn
gmake install INSTALLROOT=/tmp/nn
${THOME}/build/create_pkg TRIBnasm /tmp/nn
rm -fr /tmp/nn
cd ..

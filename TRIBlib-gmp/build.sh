#!/bin/sh
#
# Fix gmp for 64-bit includes
# [this is actually the 6.0.0a tarball, renamed as gmp-6.0.0]
#
${THOME}/build/dobuild gmp-6.0.0 -C "--enable-cxx ABI=32"
mv gmp-6.0.0 gmp-6.0.0-32bit
${THOME}/build/dobuild +64 gmp-6.0.0 -C "--enable-cxx ABI=64"
mv gmp-6.0.0-32bit gmp-6.0.0
cd gmp-6.0.0 ; gmake check ; cd ..
cd gmp-6.0.0-64bit ; gmake check ; cd ..
${THOME}/build/genpkg TRIBlib-gmp gmp-6.0.0

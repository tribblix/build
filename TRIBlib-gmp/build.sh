#!/bin/sh
#
# Fix gmp for 64-bit includes
#
${THOME}/build/dobuild gmp-6.1.2 -C "--enable-cxx ABI=32 --disable-static"
mv gmp-6.1.2 gmp-6.1.2-32bit
${THOME}/build/dobuild +64 gmp-6.1.2 -C "--enable-cxx ABI=64 --disable-static"
mv gmp-6.1.2-32bit gmp-6.1.2
cd gmp-6.1.2 ; gmake check ; cd ..
cd gmp-6.1.2-64bit ; gmake check ; cd ..
${THOME}/build/genpkg TRIBlib-gmp gmp-6.1.2

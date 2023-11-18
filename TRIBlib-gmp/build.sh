#!/bin/sh
#
# Fix gmp for 64-bit includes
#
${THOME}/build/dobuild -64 gmp-6.3.0 -C "--enable-cxx ABI=32 --disable-static" +C "--enable-cxx ABI=64 --disable-static"
#
# for sparc it tries to optimize for the current build host, which is
# absolutely not what you want, especially as the T4 pulls in VIS
# unconditionally, so force the build target to be a generic ultrasparc
#
# ${THOME}/build/dobuild -64 gmp-6.3.0 -C "--build=ultrasparc-sun-solaris2.11 --enable-cxx ABI=32 --disable-static" +C "--build=ultrasparc-sun-solaris2.11 --enable-cxx ABI=64 --disable-static"
#
# cd gmp-6.3.0 ; gmake check ; cd ..
# cd gmp-6.3.0-64bit ; gmake check ; cd ..
${THOME}/build/genpkg TRIBlib-gmp gmp-6.3.0

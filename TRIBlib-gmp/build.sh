#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# Fix gmp for 64-bit includes
#
# it tries to optimize for the current build host, which in my case
# is usually haswell; this gives wrong answers on older machines
# which generates an assert in nettle and breaks vnc
#
${THOME}/build/dobuild -64 gmp-6.3.0 -C "--build=core2-pc-solaris2.11 --enable-cxx ABI=32 --disable-static" +C "--build=core2-pc-solaris2.11 --enable-cxx ABI=64 --disable-static"
#
# for sparc it tries to optimize for the current build host, which is
# absolutely not what you want, especially as the T4 pulls in VIS
# unconditionally, so force the build target to be the base ultrasparc
#
# ${THOME}/build/dobuild -64 gmp-6.3.0 -C "--build=ultrasparc2-sun-solaris2.11 --enable-cxx ABI=32 --disable-static" +C "--build=ultrasparc2-sun-solaris2.11 --enable-cxx ABI=64 --disable-static"
#
# cd gmp-6.3.0 ; gmake check ; cd ..
# cd gmp-6.3.0-64bit ; gmake check ; cd ..
${THOME}/build/genpkg TRIBlib-gmp gmp-6.3.0

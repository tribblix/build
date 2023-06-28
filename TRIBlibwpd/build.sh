#!/bin/sh
#
# need to build the 32-bit library as the old version with the old ABI
# for binary compatibility
#
env TRIBBLIX_CXXFLAGS=-D_GLIBCXX_USE_CXX11_ABI=0 ${THOME}/build/dobuild libwpd-0.10.0
${THOME}/build/dobuild +64 libwpd-0.10.3
${THOME}/build/genpkg TRIBlibwpd libwpd-0.10.0 libwpd-0.10.3

#!/bin/sh
#
# Save the old binary like so
# (cd / ; tar cf ${THOME}/build/patches/binary-cpp.tar usr/lib/cpp)
# or for sparc
# (cd / ; tar cf ${THOME}/build/patches/binary-cpp.sparc.tar usr/lib/cpp)
#
${THOME}/build/genpkg TRIBdev-macro-cpp

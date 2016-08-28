#!/bin/sh
#
# appears to use an incompatible giflib api
#
env TRIBBLIX_CXXFLAGS=-fpermissive ${THOME}/build/dobuild xplanet-1.3.0 -C --with-gif=no
${THOME}/build/genpkg TRIBxplanet xplanet-1.3.0

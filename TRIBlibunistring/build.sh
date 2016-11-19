#!/bin/sh
#
# needed by libidn2
#
${THOME}/build/dobuild -64 libunistring-0.9.6
${THOME}/build/genpkg TRIBlibunistring libunistring-0.9.6

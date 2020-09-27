#!/bin/sh
#
# scanpci installed by fixinstall
#
${THOME}/build/dobuild -64 libpciaccess-0.14
${THOME}/build/genpkg TRIBdiagnostic-scanpci libpciaccess-0.14

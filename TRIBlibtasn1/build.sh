#!/bin/sh
#
# used by current qemu
#
${THOME}/build/dobuild -64 libtasn1-4.19.0
${THOME}/build/genpkg TRIBlibtasn1 libtasn1-4.19.0

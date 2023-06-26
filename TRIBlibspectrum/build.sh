#!/bin/sh
#
# temporary split build; the SONAME changes so we keep the older build
# for binary compatibility just in case there are old 32-bit clients
#
${THOME}/build/dobuild libspectrum-1.4.4
${THOME}/build/dobuild +64 libspectrum-1.5.0
${THOME}/build/genpkg TRIBlibspectrum libspectrum-1.4.4 libspectrum-1.5.0

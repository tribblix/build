#!/bin/sh
#
# The normal Solaris build, as followed by OI, disables static libraries
# and patches snort to compensate. We install the static libs and leave
# snort alone
#
${THOME}/build/dobuild -64 daq-2.0.6 -J 1
${THOME}/build/genpkg TRIBdaq daq-2.0.6

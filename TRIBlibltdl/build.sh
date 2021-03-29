#!/bin/sh
#
# this package supplies the runtime llibltdl libraries
# to avoid having to install the whole of libtool
#
# to build against libltdl requires TRIBlibtool be installed, as
# it supplies the public header(s)
#
${THOME}/build/dobuild -64 libtool-2.4.6
${THOME}/build/genpkg TRIBlibltdl libtool-2.4.6

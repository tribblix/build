#!/bin/sh
#
# rename the tarball
# mv privoxy-3.0.34-stable-src.tar.gz privoxy-3.0.34-stable.tar.gz
#
# there's a preconf script to generate the configure script
# the makefile will do it for you, but loses the arguments we
# pass in that case
#
${THOME}/build/dobuild -64only privoxy-3.0.34-stable -P /opt/tribblix/privoxy
${THOME}/build/genpkg TRIBblix-privoxy privoxy-3.0.34-stable

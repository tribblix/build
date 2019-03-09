#!/bin/sh
#
# rename the tarball
# mv privoxy-3.0.28-stable-src.tar.gz privoxy-3.0.28-stable.tar.gz
#
${THOME}/build/dobuild privoxy-3.0.28-stable -P /opt/tribblix/privoxy
${THOME}/build/genpkg TRIBblix-privoxy privoxy-3.0.28-stable

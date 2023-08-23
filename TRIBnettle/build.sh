#!/bin/sh
#
# we ship the previous versions of the library for binary
# compatibility with gnutls + squid + vnc
# once all rebuilt the compat copy can be removed
#
# 3.9.1 claims binary compatibility with our previous 3.6
#
${THOME}/build/dobuild -64 nettle-3.9.1 -C --disable-static
${THOME}/build/genpkg TRIBnettle nettle-3.9.1

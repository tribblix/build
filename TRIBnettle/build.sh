#!/bin/sh
#
# there's a 64-bit preconf script
#
# we ship the previous versions of the library for binary
# compatibility with gnutls + squid + claws-mail + libarchive + vnc
# once all rebuilt the compat copy can be removed
#
${THOME}/build/dobuild -64 nettle-3.6 -C --disable-static
${THOME}/build/genpkg TRIBnettle nettle-3.6

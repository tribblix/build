#!/bin/sh
#
# there's a preconf file to patch out use of 'sun' as a variable name
#
${THOME}/build/dobuild -64 libdnet-libdnet-1.16.4 -C "ac_cv_dnet_linux_pf_packet=no"
${THOME}/build/genpkg TRIBlibdnet libdnet-libdnet-1.16.4

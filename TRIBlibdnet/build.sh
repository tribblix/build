#!/bin/sh
#
# rename the github download
# mv libdnet-1.12.tar.gz libdnet-libdnet-1.12.tar.gz
#
# needs libtool and the autotools to regenerate things
#
${THOME}/build/dobuild -64 libdnet-libdnet-1.12 -C "ac_cv_dnet_linux_pf_packet=no"
${THOME}/build/genpkg TRIBlibdnet libdnet-libdnet-1.12

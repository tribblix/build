#!/bin/sh
#
# needs a patch and postconf
#
# specify LD_LRUN_PATH so that pgproto also picks it up and can find
# libpq at runtime
#
env LD_RUN_PATH=/opt/tribblix/postgres15/lib PATH=/opt/tribblix/postgres15/bin:$PATH ${THOME}/build/dobuild -64only pgpool-II-4.4.5 -C "--sysconfdir=/etc --with-openssl"
${THOME}/build/genpkg TRIBpgpool pgpool-II-4.4.5

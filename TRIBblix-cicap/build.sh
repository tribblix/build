#!/bin/sh
#
# c-icap
#
# see also TRIBblix-cicapmod
#
${THOME}/build/dobuild c_icap-0.5.6 -P /opt/tribblix/c-icap -C --with-ldap=no
${THOME}/build/genpkg TRIBblix-cicap c_icap-0.5.6

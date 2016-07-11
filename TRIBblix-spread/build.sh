#!/bin/sh
#
# needed for wackamole
#
${THOME}/build/dobuild spread-src-4.4.0 -P /opt/tribblix/spread
${THOME}/build/genpkg TRIBblix-spread spread-src-4.4.0
# Older version
# ${THOME}/build/dobuild spread-src-3.17.4 -P /opt/tribblix/spread
# ${THOME}/build/genpkg TRIBblix-spread spread-src-3.17.4

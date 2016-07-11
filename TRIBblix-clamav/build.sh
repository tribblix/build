#!/bin/sh
#
# clamav
#
${THOME}/build/dobuild clamav-0.99.2 -P /opt/tribblix/clamav
${THOME}/build/genpkg TRIBblix-clamav clamav-0.99.2

#!/bin/sh
#
# must not have TRIBlibedit installed
#
${THOME}/build/dobuild bind-9.9.9-P2 -C "--sysconfdir=/etc --localstatedir=/var"
${THOME}/build/genpkg TRIBbind9 bind-9.9.9-P2

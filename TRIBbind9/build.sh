#!/bin/sh
#
# must not have TRIBlibedit installed
#
${THOME}/build/dobuild bind-9.11.3 -C "--sysconfdir=/etc --localstatedir=/var"
${THOME}/build/genpkg TRIBbind9 bind-9.11.3

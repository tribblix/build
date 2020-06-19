#!/bin/sh
#
# must not have TRIBlibedit installed
#
${THOME}/build/dobuild bind-9.11.20 -C "--sysconfdir=/etc --localstatedir=/var --without-python"
${THOME}/build/genpkg TRIBbind9 bind-9.11.20

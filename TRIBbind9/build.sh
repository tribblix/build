#!/bin/sh
#
# must not have TRIBlibedit or TRIBjson-c installed
#
${THOME}/build/dobuild bind-9.11.36 -C "--sysconfdir=/etc --localstatedir=/var --without-python"
${THOME}/build/genpkg TRIBbind9 bind-9.11.36

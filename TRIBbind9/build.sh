#!/bin/sh
#
# must not have TRIBlibedit or TRIBjson-c installed
#
# there's a preconf script that replaces the configure broken by
# the Solaris fixes with one that actually works
#
${THOME}/build/dobuild bind-9.11.35 -C "--sysconfdir=/etc --localstatedir=/var --without-python"
${THOME}/build/genpkg TRIBbind9 bind-9.11.35

#!/bin/sh
#
# needs libtool
#
${THOME}/build/dobuild guile-1.8.8 -C "--disable-error-on-warning"
${THOME}/build/genpkg TRIBguile guile-1.8.8

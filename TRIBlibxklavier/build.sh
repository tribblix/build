#!/bin/sh
#
# needs iso-codes
#
${THOME}/build/dobuild -64only libxklavier-5.4 -C --disable-introspection
${THOME}/build/genpkg TRIBlibxklavier libxklavier-5.4

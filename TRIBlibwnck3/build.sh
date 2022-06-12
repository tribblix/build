#!/bin/sh
#
${THOME}/build/dobuild -64 -gnu libwnck-3.24.1 -C "--disable-introspection --program-suffix=3"
${THOME}/build/genpkg TRIBlibwnck3 libwnck-3.24.1

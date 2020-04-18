#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -gnu pluma-1.22.2 -C --disable-introspection
${THOME}/build/genpkg TRIBmate-pluma pluma-1.22.2

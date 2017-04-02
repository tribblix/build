#!/bin/sh
#
${THOME}/build/dobuild -64 libmediaart-1.9.1 -C --disable-introspection
${THOME}/build/genpkg TRIBlibmediaart libmediaart-1.9.1

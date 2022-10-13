#!/bin/sh
#
${THOME}/build/mesonbuild -64 libmediaart-1.9.6 -C -Dintrospection=false
${THOME}/build/genpkg TRIBlibmediaart libmediaart-1.9.6

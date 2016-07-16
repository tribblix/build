#!/bin/sh
#
zap install-overlay autotools
${THOME}/build/unpack agg-2.5
cd agg-2.5
sed -i 's:  -L@x_libraries@::' src/platform/X11/Makefile.am
sed -i '/^AM_C_PROTOTYPES/d'   configure.in
bash autogen.sh --prefix=/usr --disable-static
gmake
cd ..
${THOME}/build/genpkg TRIBlibagg agg-2.5

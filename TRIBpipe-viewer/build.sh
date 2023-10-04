#!/bin/sh
#
${THOME}/build/dobuild -64only pv-1.8.0 -C --disable-nls
${THOME}/build/genpkg TRIBpipe-viewer pv-1.8.0

#!/bin/sh
#
${THOME}/build/dobuild pv-1.6.0 -C --disable-nls
${THOME}/build/genpkg TRIBpipe-viewer pv-1.6.0

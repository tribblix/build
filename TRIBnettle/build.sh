#!/bin/sh
#
${THOME}/build/dobuild -64 nettle-3.9.1 -C --disable-static
${THOME}/build/genpkg TRIBnettle nettle-3.9.1

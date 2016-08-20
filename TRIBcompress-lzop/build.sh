#!/bin/sh
#
# requires lzo
#
${THOME}/build/dobuild lzop-1.03
${THOME}/build/genpkg TRIBcompress-lzop lzop-1.03

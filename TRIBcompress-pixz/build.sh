#!/bin/sh
#
# install libarchive first
# zap install libarchive
#
${THOME}/build/dobuild -64only pixz-1.0.7
${THOME}/build/genpkg TRIBcompress-pixz pixz-1.0.7

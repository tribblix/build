#!/bin/sh
#
${THOME}/build/dobuild -gnu -64only gzip-1.13
${THOME}/build/genpkg TRIBcompress-gzip gzip-1.13

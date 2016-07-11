#!/bin/sh
#
${THOME}/build/dobuild a52dec-0.7.4 -C "--enable-shared --disable-static"
${THOME}/build/genpkg TRIBliba52 a52dec-0.7.4

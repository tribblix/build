#!/bin/sh
#
${THOME}/build/dobuild -64 -gnu at-spi2-core-2.8.0
${THOME}/build/genpkg TRIBlib-desktop-at-spi2 at-spi2-core-2.8.0

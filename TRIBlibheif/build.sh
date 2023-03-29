#!/bin/sh
#
${THOME}/build/dobuild -64 libheif-1.15.1 -C --disable-go
${THOME}/build/genpkg TRIBlibheif libheif-1.15.1

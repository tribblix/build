#!/bin/sh
#
${THOME}/build/unpack xfishtank
cd xfishtank
xmkmf -DHasGcc3=YES
gmake
${THOME}/build/genpkg TRIBxfishtank

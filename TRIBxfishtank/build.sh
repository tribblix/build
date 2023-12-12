#!/bin/sh
#
${THOME}/build/unpack xfishtank
cd xfishtank
xmkmf -DHasGcc3=YES -DAMD64Architecture=YES -DDefaultCCOptions="-m64"
# xmkmf -DHasGcc3=YES -DSparc64Architecture=YES -DDefaultCCOptions="-m64"
gmake
${THOME}/build/genpkg TRIBxfishtank

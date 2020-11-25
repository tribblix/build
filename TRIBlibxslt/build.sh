#!/bin/sh
#
# follow the OI build, as that's what we've had until now
${THOME}/build/dobuild -64 libxslt-1.1.34 -C "--disable-static --with-pic --without-crypto"
${THOME}/build/genpkg TRIBlibxslt libxslt-1.1.34

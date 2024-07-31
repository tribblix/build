#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# follow the OI build, as that's what we've had until now
#
# delivers some python pieces, see fixit, but we don't declare a dependency
#
${THOME}/build/dobuild -64only libxslt-1.1.39 -C "--disable-static --with-pic --without-crypto"
${THOME}/build/genpkg TRIBlibxslt libxslt-1.1.39

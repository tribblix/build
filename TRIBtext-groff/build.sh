#!/bin/sh
#
${THOME}/build/dobuild +64only -gnu groff-1.23.0 -P /usr/gnu -C --with-doc=no
${THOME}/build/genpkg TRIBtext-groff groff-1.23.0

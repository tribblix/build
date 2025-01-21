#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only aalib-1.4.0 -C --with-slang-driver=no
${THOME}/build/genpkg TRIBaalib aalib-1.4.0

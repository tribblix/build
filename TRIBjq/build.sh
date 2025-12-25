#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only jq-1.6 -C --with-oniguruma=builtin
${THOME}/build/genpkg TRIBjq jq-1.6

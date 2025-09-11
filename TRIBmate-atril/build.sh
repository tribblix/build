#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only +gnu atril-1.28.1 -C --without-keyring
${THOME}/build/genpkg TRIBmate-atril atril-1.28.1

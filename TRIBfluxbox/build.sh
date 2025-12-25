#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
#  add TRIBtext-locale to provide gencat
#  unfortunately 1.3.7 barfs in translations, hence -k
#
${THOME}/build/dobuild -64only fluxbox-1.3.7 -M "-k"
${THOME}/build/genpkg TRIBfluxbox fluxbox-1.3.7

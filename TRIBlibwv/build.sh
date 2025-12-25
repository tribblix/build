#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# you'll have to get the tarball from debian or similar; the wvware
# site on sourceforge goes up to 1.2.4
#
${THOME}/build/dobuild -64only wv-1.2.9
${THOME}/build/genpkg TRIBlibwv wv-1.2.9

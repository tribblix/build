#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild -64only https://github.com/jedisct1/minisign
${THOME}/build/genpkg TRIBminisign minisign

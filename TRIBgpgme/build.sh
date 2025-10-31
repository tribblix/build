#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only gpgme-1.24.3 -C --disable-gpg-test
${THOME}/build/genpkg TRIBgpgme gpgme-1.24.3

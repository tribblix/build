#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only gpgme-2.3.1 -C --disable-gpg-test
${THOME}/build/genpkg TRIBgpgme gpgme-2.3.1

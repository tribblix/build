#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needs a postconf script
#
# disabling the internal ccid driver avoids pulling in libusb
#
${THOME}/build/dobuild gnupg-2.4.8 -64only -C "--disable-ldap --enable-gpg-is-gpg2 --disable-ccid-driver"
${THOME}/build/genpkg TRIBgnupg2 gnupg-2.4.8

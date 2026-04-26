#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needs a postconf script
#
# disabling the internal ccid driver avoids pulling in libusb
#
${THOME}/build/dobuild gnupg-2.5.19 -64only -C "--disable-ldap --disable-ccid-driver"
${THOME}/build/genpkg TRIBgnupg2 gnupg-2.5.19

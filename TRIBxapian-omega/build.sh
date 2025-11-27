#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only xapian-omega-1.4.30 -C "--localstatedir=/var --sysconfdir=/etc"
${THOME}/build/genpkg TRIBxapian-omega xapian-omega-1.4.30

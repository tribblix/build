#!/bin/sh
#
${THOME}/build/dobuild -64only xapian-omega-1.4.22 -C "--localstatedir=/var --sysconfdir=/etc"
${THOME}/build/genpkg TRIBxapian-omega xapian-omega-1.4.22

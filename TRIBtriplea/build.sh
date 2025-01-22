#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# Run the installer. It places files into ~/TripleA
# Then convert those files into a package
#
rm -fr /tmp/jj
mkdir -p /tmp/jj/usr/bin /tmp/jj/usr/share
cd
tar cf - TripleA | (cd /tmp/jj/usr/share ; tar xf -)
ln -s ../../usr/share/TripleA/TripleA /tmp/jj/usr/bin
rm -f /tmp/jj/usr/share/TripleA/error.log
rm -f /tmp/jj/usr/share/TripleA/uninstall
${THOME}/build/create_pkg TRIBtriplea /tmp/jj
rm -fr /tmp/jj

#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# Since the 2.2.1 release, CDE should only need minimal patching
#
${THOME}/build/unpack cde-2.3.2
cd cde-2.3.2

#
# with recent Tribblix you may need to add a compilation symlink for
# -lcmd to work
# cd /usr/lib; ln -s libcmd.so.1 libcmd.so
#

make World

#
# run the CDE installer
#
# it won't actually run to completion, but that doesn't matter
# as it will have done the important thing which is to populate
# a directory tree under /tmp/111
#
rm -fr /tmp/111
./admin/IntegTools/dbTools/installCDE -s `pwd` -pseudo -destdir /tmp/111 -t /tmp/cde.tar

#
# clean up
#
rm -f /tmp/CDE*
rm -fr /tmp/cde.tar

#
# you need to have the DT font aliases defined, else dtterm will look bizarre
# and lots of other things won't work at all
#
mkdir -p /tmp/111/etc/X11/fontpath.d
ln -s ../../../usr/dt/config/xfonts/C /tmp/111/etc/X11/fontpath.d/cde:pri

#
# and make the package
#
${THOME}/build/create_pkg TRIBcde /tmp/111

rm -fr /tmp/111

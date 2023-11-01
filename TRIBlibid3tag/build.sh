#!/bin/sh
#
# you may need to repack the tarball as it's shipped without the version
#
${THOME}/build/cmbuild -64 libid3tag-0.16.3
${THOME}/build/genpkg TRIBlibid3tag libid3tag-0.16.3

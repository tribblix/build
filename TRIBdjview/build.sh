#!/bin/sh
#
# the tarball needs a rename from djview-4.12.tar.gz to djview4-4.12.tar.gz
#
env PATH=/usr/gnu/bin:/usr/versions/Qt-5/bin/`${THOME}/build/getarch`:$PATH ${THOME}/build/dobuild -64only djview4-4.12
env PATH=/usr/gnu/bin:/usr/versions/Qt-5/bin/`${THOME}/build/getarch`:$PATH ${THOME}/build/genpkg TRIBdjview djview4-4.12

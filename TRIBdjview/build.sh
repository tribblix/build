#!/bin/sh
#
# the tarball needs a rename from djview-4.12.tar.gz to djview4-4.12.tar.gz
#
env PATH=/usr/gnu/bin:/usr/versions/Qt-5/bin:$PATH ${THOME}/build/dobuild djview4-4.12
env PATH=/usr/gnu/bin:/usr/versions/Qt-5/bin:$PATH ${THOME}/build/genpkg TRIBdjview djview4-4.12

#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the aim here is to fully enable the [postgresql] extra for pandas,
# which requires the python adbc-driver-postgresql module
#
# there's a little patch to make the postgresql build work on illumos
#
env TRIBBLIX_PKG_CONFIG_PATH=/opt/tribblix/postgres17/lib/pkgconfig $THOME/build/cmbuild -64only -S c apache-arrow-adbc-22 -C "-DADBC_BUILD_SHARED=ON -DADBC_BUILD_STATIC=OFF -DADBC_DRIVER_MANAGER=ON -DADBC_DRIVER_POSTGRESQL=ON -DADBC_DRIVER_SQLITE=ON -DCMAKE_INSTALL_RPATH_USE_LINK_PATH=TRUE"
${THOME}/build/genpkg TRIBapache-arrow-adbc apache-arrow-adbc-22

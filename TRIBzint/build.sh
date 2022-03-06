#!/bin/sh
#
# build both the regular and QT packages together
#
env PATH=/usr/versions/Qt-5/bin:$PATH $THOME/build/cmbuild zint-2.10.0-src
${THOME}/build/genpkg TRIBzint zint-2.10.0-src
${THOME}/build/genpkg TRIBzint-qt zint-2.10.0-src

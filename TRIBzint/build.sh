#!/bin/sh
#
# build both the regular and QT packages together
#
env PATH=/usr/versions/Qt-4.8/bin:$PATH $THOME/build/cmbuild zint-2.5.1
${THOME}/build/genpkg TRIBzint zint-2.5.1
${THOME}/build/genpkg TRIBzint-qt zint-2.5.1

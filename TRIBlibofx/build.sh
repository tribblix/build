#!/bin/sh
#
${THOME}/build/cmbuild -64only libofx-0.10.9 -C -DENABLE_OFXCONNECT=OFF
${THOME}/build/genpkg TRIBlibofx libofx-0.10.9

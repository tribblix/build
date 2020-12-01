#!/bin/sh
${THOME}/build/cmbuild libzip-1.7.3 -C -DENABLE_GNUTLS=OFF
${THOME}/build/genpkg TRIBlibzip libzip-1.7.3

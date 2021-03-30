#!/bin/sh
${THOME}/build/cmbuild -64 libzip-1.7.3 -C -DENABLE_GNUTLS=OFF
${THOME}/build/genpkg TRIBlibzip libzip-1.7.3

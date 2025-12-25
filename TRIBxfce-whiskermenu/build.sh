#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild -64only -gnu xfce4-whiskermenu-plugin-2.8.3 -C "-DENABLE_ACCOUNTS_SERVICE=no -DENABLE_GTK_LAYER_SHELL=no -DENABLE_AS_NEEDED=OFF -DENABLE_LINKER_OPTIMIZED_HASH_TABLES=OFF"
${THOME}/build/genpkg TRIBxfce-whiskermenu xfce4-whiskermenu-plugin-2.8.3

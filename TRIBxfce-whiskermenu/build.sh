#!/bin/sh
#
${THOME}/build/cmbuild -gnu xfce4-whiskermenu-plugin-2.8.2 -C "-DENABLE_ACCOUNTS_SERVICE=no -DENABLE_GTK_LAYER_SHELL=no -DENABLE_AS_NEEDED=OFF -DENABLE_LINKER_OPTIMIZED_HASH_TABLES=OFF"
${THOME}/build/genpkg TRIBxfce-whiskermenu xfce4-whiskermenu-plugin-2.8.2

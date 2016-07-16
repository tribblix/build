#!/bin/sh
#
${THOME}/build/dobuild wv-1.2.9
rm wv-1.2.9/install-sh ; ln -s /usr/bin/ginstall wv-1.2.9/install-sh
${THOME}/build/genpkg TRIBlibwv wv-1.2.9

#!/bin/sh
#
# you'll have to get the tarball from debian or similar; the wvware
# site on sourceforge goes up to 1.2.4
#
${THOME}/build/dobuild wv-1.2.9
rm wv-1.2.9/install-sh ; ln -s /usr/bin/ginstall wv-1.2.9/install-sh
${THOME}/build/genpkg TRIBlibwv wv-1.2.9

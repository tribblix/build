#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# build mod_perl
# it's split into 2 packages, one for the apache half, the other for the
# perl half, as they go in different places
#
${THOME}/build/unpack mod_perl-2.0.13
cd mod_perl-2.0.13
perl Makefile.PL MP_APXS=/opt/tribblix/apache2/bin/apxs
make
#
# make both packages, assuming fixit will delete the bits
# not needed in each package
#
${THOME}/build/genpkg TRIBblix-modperl
${THOME}/build/genpkg TRIBlib-perl-5-modperl

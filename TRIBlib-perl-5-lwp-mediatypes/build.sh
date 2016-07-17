#!/bin/sh
#
# NOTE: this module was last built against perl5.10.0
#
${THOME}/build/unpack LWP-MediaTypes-6.02
cd LWP-MediaTypes-6.02
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-lwp-mediatypes

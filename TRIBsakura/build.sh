#!/bin/sh
#
env PATH=/usr/gnu/bin:${PATH}:/usr/perl5/bin ${THOME}/build/cmbuild -64only sakura-3.8.5
${THOME}/build/genpkg TRIBsakura sakura-3.8.5

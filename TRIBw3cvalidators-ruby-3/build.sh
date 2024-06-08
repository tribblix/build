#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# it builds nokogiri, which we already package, but we need
# the build to succeed
#
env CC="gcc -m64" PATH=/usr/gnu/bin:$PATH ${THOME}/build/pkg_gem TRIBw3cvalidators-ruby-3 w3c_validators -- --use-system-libraries

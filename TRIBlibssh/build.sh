#!/bin/sh
#
# turn off SSP until we can work out how to persuade the 32-bit build
# to pick up libssp_ns
#
${THOME}/build/cmbuild -64 libssh-0.9.6 -C "-DWITH_STACK_PROTECTOR_STRONG=false -DWITH_STACK_PROTECTOR=false"
${THOME}/build/genpkg TRIBlibssh libssh-0.9.6

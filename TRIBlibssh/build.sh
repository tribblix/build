#!/bin/sh
#
#
#
${THOME}/build/cmbuild -64 libssh-0.9.4 -C "-DWITH_STACK_PROTECTOR_STRONG=false -DWITH_STACK_PROTECTOR=false"
${THOME}/build/genpkg TRIBlibssh libssh-0.9.4

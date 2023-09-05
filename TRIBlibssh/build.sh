#!/bin/sh
#
# SSP doesn't work in 32-bit, but the only consumer is 64-bit wireshark
# so we no longer need to ship a 32-bit library
#
${THOME}/build/cmbuild +64 libssh-0.9.7
${THOME}/build/genpkg TRIBlibssh libssh-0.9.7

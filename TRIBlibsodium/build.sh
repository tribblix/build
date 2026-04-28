#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the intention is to build pynacl against the system libsodium provided here,
# to reduce fragility in the pynacl build
#
# there's a postconf patch, absolutely necessary on sparc
#
${THOME}/build/dobuild +64 libsodium-1.0.22
${THOME}/build/genpkg TRIBlibsodium libsodium-1.0.22

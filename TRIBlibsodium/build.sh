#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the intention is to build pynacl against the system libsodium provided here,
# to reduce fragility in the pynacl build
#
# the downloaded tarball unpacks into libsodium-stable, so
# repack it to create something more useful
#
# there's a postconf patch, absolutely necessary on sparc
#
${THOME}/build/dobuild +64 libsodium-1.0.19
${THOME}/build/genpkg TRIBlibsodium libsodium-1.0.19

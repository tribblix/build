#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# uses the fs2 crate which is broken
# in ~/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fs2-0.4.3
# (or similar), edit src/unix.rs and add illumos to the list of platforms
# for the allocate function, at line ~100
#
${THOME}/build/pkg_pep518 -N TRIBuv-build-python-312 uv_build-0.9.24

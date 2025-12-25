#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

# yes, it unpacks into . rather than it's own directory
mkdir bazel-6.3.2
cd bazel-6.3.2
$THOME/build/unpack bazel-6.3.2-dist
$THOME/build/dopatch $THOME/build/patches/bazel-6.3.2.pls
$THOME/build/patches/bazel.postpatch

env PATH=/usr/gnu/bin:$PATH \
  VERBOSE=yes \
  JAVA_HOME=/usr/jdk/latest \
  EXTRA_BAZEL_ARGS=--tool_java_runtime_version=local_jdk \
  ./compile.sh

rm -fr /tmp/bzl1
mkdir -p /tmp/bzl1/usr/bin
cp output/bazel /tmp/bzl1/usr/bin
${THOME}/build/create_pkg TRIBbazel /tmp/bzl1
rm -fr /tmp/bzl1

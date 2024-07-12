#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# LLVM
#
# Now has clang in a separate package
#
# we use the combined project tarball; realistically you only need to
# unpack it the once
#

${THOME}/build/unpack llvm-project-18.1.8.src
cd llvm-project-18.1.8.src/llvm

mkdir tribblix_build
cd tribblix_build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/versions/llvm -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ -DLLVM_BUILD_LLVM_DYLIB=ON -DLLVM_INCLUDE_BENCHMARKS=OFF -DLLVM_INSTALL_UTILS=ON -DLLVM_LINK_LLVM_DYLIB=ON -DLLVM_ENABLE_RTTI=ON ..
# this will take a while...
gmake -j 6

${THOME}/build/genpkg TRIBllvm
cd ../..

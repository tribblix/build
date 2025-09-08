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

#
# need to disable assembly, as (a) it doesn't build properly, and
# (b) symbol visibility is messed up - this only impacts BLAKE3
#
mkdir tribblix_build
cd tribblix_build
env CXXFLAGS=-m64 CFLAGS=-m64 LDFLAGS=-m64 cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/versions/llvm -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ -DLLVM_BUILD_LLVM_DYLIB=ON -DLLVM_INCLUDE_BENCHMARKS=OFF -DLLVM_INSTALL_UTILS=ON -DLLVM_LINK_LLVM_DYLIB=ON -DLLVM_ENABLE_RTTI=ON -DLLVM_DISABLE_ASSEMBLY_FILES=ON ..
# this will take a while...
#
# while you want to make the parallelism as high as possible to shorten
# build times, it's quite memory intensive, so the maximum effective
# value is half your memory in GB, otherwise it will start swapping
#
gmake -j 4

${THOME}/build/genpkg TRIBllvm
cd ../..

#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# Clang
#
# Needs to match the corresponding llvm package
#
# we use the combined project tarball; realistically you only need to
# unpack it the once
#

${THOME}/build/unpack llvm-project-18.1.8.src
cd llvm-project-18.1.8.src/clang

mkdir tribblix_build
cd tribblix_build
env CXXFLAGS=-m64 CFLAGS=-m64 LDFLAGS=-m64 cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/versions/llvm -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ -DGCC_INSTALL_PREFIX=/usr/versions/gcc-10 -DCLANG_VENDOR="Tribblix" -DCLANG_DEFAULT_RTLIB=libgcc -DCLANG_DEFAULT_CXX_STDLIB=libstdc++ -DLLVM_DIR=/usr/versions/llvm/lib/cmake/llvm -DLLVM_INCLUDE_TESTS=OFF ..
# this will take a while...
# need to find the llvm libraries at build time
env LD_LIBRARY_PATH=/usr/versions/llvm/lib gmake -j 4

${THOME}/build/genpkg TRIBclang
cd ../..

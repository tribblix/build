#!/bin/sh
#
# LLVM
#
# Now has clang in a separate package
#

${THOME}/build/unpack llvm-14.0.6.src
cd llvm-14.0.6.src

mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/versions/llvm -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ -DLLVM_BUILD_LLVM_DYLIB=ON -DLLVM_INCLUDE_BENCHMARKS=OFF -DLLVM_INSTALL_UTILS=ON -DLLVM_LINK_LLVM_DYLIB=ON ..
# this will take a while...
gmake -j 6

${THOME}/build/genpkg TRIBllvm
cd ../..

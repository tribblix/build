#!/bin/sh
#
# Clang
#
# Needs to match the corresponding llvm package
#

${THOME}/build/unpack clang-14.0.6.src
cd clang-14.0.6.src

mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/versions/llvm -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ -DGCC_INSTALL_PREFIX=/usr/versions/gcc-10 -DCLANG_VENDOR="Tribblix" -DCLANG_DEFAULT_LINKER=/usr/bin/ld -DCLANG_DEFAULT_RTLIB=libgcc -DCLANG_DEFAULT_CXX_STDLIB=libstdc++ -DLLVM_DIR=/usr/versions/llvm/lib/cmake/llvm ..
# this will take a while...
# need to find the llvm libraries at build time
env LD_LIBRARY_PATH=/usr/versions/llvm/lib gmake -j 6

${THOME}/build/genpkg TRIBclang
cd ../..

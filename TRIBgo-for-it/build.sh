#!/bin/sh
#
# needs vala
#
git clone https://github.com/JMoerman/Go-For-It
cd Go-For-It
mkdir build
cd build
env PATH=/usr/gnu/bin:$PATH cmake ..
gmake -j 6
${THOME}/build/genpkg TRIBgo-for-it
cd ../..

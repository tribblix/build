#!/bin/sh
#
# calls "make" but wants gmake
#
mkdir -p ~/ud
cd ~/ud
mkdir f
cd f
git clone https://github.com/leo-project/leofs.git
cd leofs
env PATH=/usr/bin/amd64:/usr/gnu/bin:$PATH gmake CC=gcc
env PATH=/usr/bin/amd64:/usr/gnu/bin:$PATH gmake CC=gcc release


rm -fr /tmp/ll
mkdir -p /tmp/ll/opt/tribblix/leofs
cd package
tar cf - . | (cd /tmp/ll/opt/tribblix/leofs ; tar xf -)
cd ..
${THOME}/build/create_pkg TRIBblix-leofs /tmp/ll

#!/bin/sh
#
env PATH=/usr/gnu/bin:/usr/versions/Qt-4.8/bin:$PATH ${THOME}/build/dobuild djview-4.10.5
env PATH=/usr/gnu/bin:/usr/versions/Qt-4.8/bin:$PATH ${THOME}/build/genpkg TRIBdjview djview-4.10.5

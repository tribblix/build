#!/bin/sh
#
${THOME}/build/dobuild -64only protobuf-c-1.5.0 -C --disable-dependency-tracking
${THOME}/build/genpkg TRIBprotobuf-c protobuf-c-1.5.0

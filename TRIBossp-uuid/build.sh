#!/bin/sh
#
# ossp uuid [careful to avoid name conflicts with our *real* libuuid]
#
${THOME}/build/dobuild uuid-1.6.2 -C --includedir=/usr/include/ossp
${THOME}/build/genpkg TRIBossp-uuid uuid-1.6.2

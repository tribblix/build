#!/bin/sh
#
# 4.4.18 is the base tarball which has patch(es) applied
#
${THOME}/build/dobuild -64 bash-4.4.18
${THOME}/build/genpkg TRIBshell-bash bash-4.4.18

#!/bin/sh
#
# zombodb for postgres 11
#
# the binaries are linked against postgres libraries, so this package
# installs into the same prefix as the postgres version it's built
# against, and is versioned to match
#

#
# master doesn't support postgres 11 yet, so we have to build against
# the develop branch
#
git clone https://github.com/zombodb/zombodb
cd zombodb
git fetch origin
git checkout -b develop origin/develop
env PATH=/opt/tribblix/postgres11/bin:$PATH gmake
env PATH=/opt/tribblix/postgres11/bin:$PATH $THOME/build/genpkg TRIBblix-zombodb11
cd ..

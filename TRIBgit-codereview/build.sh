#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env GOPATH=`pwd` go install golang.org/x/review/git-codereview@v1.18.0
rm -fr /tmp/cs
mkdir -p /tmp/cs/usr/bin
mkdir -p /tmp/cs/usr/share/git-codereview
cp bin/git-codereview /tmp/cs/usr/bin
cp pkg/mod/golang.org/x/review@*/README.md pkg/mod/golang.org/x/review@*/LICENSE /tmp/cs/usr/share/git-codereview
${THOME}/build/create_pkg TRIBgit-codereview /tmp/cs
rm -fr /tmp/cs

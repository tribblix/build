#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env PATH=/usr/versions/go-1.26/bin:$PATH GOPATH=`pwd` go install golang.org/x/review/git-codereview@v1.19.0
rm -fr /tmp/cs
mkdir -p /tmp/cs/usr/bin
mkdir -p /tmp/cs/usr/share/git-codereview
cp bin/git-codereview /tmp/cs/usr/bin
cp pkg/mod/golang.org/x/review@*/README.md pkg/mod/golang.org/x/review@*/LICENSE /tmp/cs/usr/share/git-codereview
${THOME}/build/create_pkg TRIBgit-codereview /tmp/cs
rm -fr /tmp/cs

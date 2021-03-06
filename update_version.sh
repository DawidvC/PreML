#!/bin/bash

VERSION=`cat VERSION`
function prep {
    sed s/VERSION/$VERSION/g $1 > `dirname $1`/`basename $1 .skel`
}

prep preml.smackspec.skel
prep src/version.sml.skel
git add VERSION preml.smackspec src/version.sml
git commit -m "$1"
git tag v$VERSION -a -m "$1"
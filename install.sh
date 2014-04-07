#!/bin/bash
VERSION=$(cat VERSION)
SRC_DIR=/usr/local/src/queued-$VERSION
BIN_DIR=/usr/local/bin
set -xe
mkdir -p $SRC_DIR && cd $SRC_DIR
curl -0 https://raw.githubusercontent.com/snormore/queued/master/queued.sh > queued.sh
chmod +x queued.sh
cp queued.sh $BIN_DIR/queued

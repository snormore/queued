#!/bin/bash
VERSION=$(cat VERSION)
SRC_DIR=/usr/local/src/queued-$VERSION
BIN_DIR=/usr/local/bin
set -xe
mkdir -p $SRC_DIR && cd $SRC_DIR
wget https://raw.githubusercontent.com/snormore/queued/master/queued.sh
cp queued.sh $BIN_DIR/queued

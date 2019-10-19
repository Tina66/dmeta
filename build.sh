#!/usr/bin/env bash

set -e

# make sure that we are under project folder
mkdir -p build
pushd build

cmake ..
#TODO(qwang): Should be refine.
make -j 8

#!/usr/bin/env bash
set -e

TOOLCHAINS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

TARGET=$(uname -m)-darwin
ADDRM=64
MTUNE=generic

export CC=gcc-15
#export CFLAGS="-m64"
export CXX=g++-15
#export CXXFLAGS="-m64"
export STRIP=strip
export CMAKE_TOOLCHAIN_FILE="$TOOLCHAINS_DIR/darwin-brew-gcc15.cmake"

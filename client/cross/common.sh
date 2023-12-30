#!/usr/bin/env bash

set -x
set -euo pipefail

# shellcheck disable=SC1091
. lib.sh

install_packages \
    autoconf \
    automake \
    binutils \
    ca-certificates \
    curl \
    file \
    gcc \
    git \
    libtool \
    m4 \
    make

install_packages \
    g++ \
    libc6-dev \
    libclang-dev \
    pkg-config

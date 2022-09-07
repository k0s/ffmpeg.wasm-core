#!/usr/bin/env bash

set -euxo pipefail

HERE="$( builtin cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
builtin cd "${HERE}"

ENGINE=${ENGINE:-docker}

"${ENGINE}" buildx build \
            -t ffmpeg.wasm-core \
            --progress plain \
            --platform=linux/amd64 \
            .

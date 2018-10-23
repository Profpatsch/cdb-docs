#!/usr/bin/env bash
set -euo pipefail

# right now only works for pwd
here="$(pwd)"
version="${1:?first argument is version string}"

tmp="$(mktemp -d)"

wget \
    --recursive \
    --level=3 \
    --convert-links \
    --page-requisites \
    --include-directories "*cdb*" \
    --no-parent \
    --directory-prefix "$tmp" \
    https://cr.yp.to/cdb.html

pushd "$tmp"/cr.yp.to
# the source tar is always included, so remove
rm cdb/cdb-${version}.tar.gz

cp -r * "$here"/docs
popd

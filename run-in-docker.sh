#!/bin/sh

CURRENT=$(cd "$(dirname "$0")" && pwd)
docker volume create actions-goveralls-cache > /dev/null 2>&1
docker run --rm \
    -e GO111MODULE=on \
    -e "GOOS=${GOOS:-linux}" -e "GOARCH=${GOARCH:-amd64}" -e "CGO_ENABLED=${CGO_ENABLED:-0}" \
    -v actions-goveralls-cache:/go/pkg/mod \
    -v actions-goveralls-cache:/root/.cache \
<<<<<<< 0f1d6cc6f82331e116ca6d48a0381b1738c5f861
    -v "$CURRENT":/go/src/github.com/step-security/actions-goveralls \
    -w /go/src/github.com/step-security/actions-goveralls golang:1.26.6 "$@"
=======
    -v "$CURRENT":/go/src/github.com/shogo82148/actions-goveralls \
    -w /go/src/github.com/shogo82148/actions-goveralls golang:1.27.0 "$@"
>>>>>>> edac7a4fb1bed495b14d8adcdfcfb7b743a2b418

#!/usr/bin/env bash

set -e
set -x

HASH=$(git rev-parse --short HEAD)
find . -type f -exec sed -i "s/cobyqa/cobyqa_$HASH/g" {} +
find . -type d -exec rename "s/cobyqa/cobyqa_$HASH/" {} ";"

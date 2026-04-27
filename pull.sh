#!/bin/sh

set -euo pipefail

BRANCH=$(git rev-parse --abbrev-ref HEAD)
REMOTE=${1:-origin}

git fetch --depth=1 "$REMOTE"
git reset --hard "$REMOTE/$BRANCH"

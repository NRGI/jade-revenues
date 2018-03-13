#!/usr/bin/env bash

cat > revenues-test/version.txt << EOF
{
  "commit_sha": "$COMMIT",
  "image": "nrgi/jade-revenues:$BRANCH.$COMMIT"
}
EOF

#!/usr/bin/env bash

cat > revenues-test/version.txt << EOF
{
  "commit_sha": "$COMMIT",
  "image": "nrgi/rgi-api:$BRANCH.$COMMIT"
}
EOF

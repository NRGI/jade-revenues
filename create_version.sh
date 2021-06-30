#!/usr/bin/env bash

cat > version.txt << EOF
{
  "commit_sha": "$CODEBUILD_RESOLVED_SOURCE_VERSION",
  "image": "$AWS_ACCOUNT_ID.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com/$IMAGE_REPO_NAME:$BRANCH_NAME.$CODEBUILD_RESOLVED_SOURCE_VERSION"
}
EOF

cp version.txt revenues-test/

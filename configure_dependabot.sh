#! /bin/bash

ORGANIZATION=$1
REPOSITORY_NAME=$2

curl -L \
  -X PUT \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $GH_TOKEBN" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/$ORGANIZATION/$REPOSITORY_NAME/automated-security-fixes
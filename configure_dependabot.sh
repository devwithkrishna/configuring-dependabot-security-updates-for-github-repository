#! /bin/bash

ORGANIZATION=$1
REPOSITORY_NAME=$2

# Enabling vulnerability alerts
curl -L \
  -X PUT \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $GH_TOKEN" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/$ORGANIZATION/$REPOSITORY_NAME/vulnerability-alerts

# Enabling dependabot
curl -L \
  -X PUT \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $GH_TOKEN" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/$ORGANIZATION/$REPOSITORY_NAME/automated-security-fixes

# Vulnerability alerts must be enabled to configure automated security fixes
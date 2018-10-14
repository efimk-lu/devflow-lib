#!/usr/bin/env bash
set -e

setup_git() {
    git config --global user.email "travis@travis-ci.org"
    git config --global user.name "Travis CI"
}

push_tags() {
    git remote add origin https://${GITHUB_TOKEN}@github.com/efimk-lu/devflow-lib.git
    git push origin master --tags
}

setup_git

echo "Bump patch version"
npm version patch

#echo "Push to NPM"
#cp .base_npmrc .npmrc
#npm publish
#rm .npmrc
echo "Create release tag"
push_tags





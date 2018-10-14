#!/usr/bin/env bash
set -e

setup_git() {
    git config --global user.email "travis@travis-ci.org"
    git config --global user.name "Travis CI"
    git checkout master
}

push_tags() {
    git remote set-url origin https://${GITHUB_TOKEN}@github.com/efimk-lu/devflow-lib.git
    git push origin master --tags
}


setup_git
echo "Bump patch version"
npm version patch -m "Upgrade to %s [skip ci]"
#echo "Push to NPM"
#cp .base_npmrc .npmrc
#npm publish
#rm .npmrc
echo "Create release tag"
push_tags





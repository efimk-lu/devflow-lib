#!/usr/bin/env bash
set -e
npm test
npx eslint *.js
npm run flow
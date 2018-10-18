#!/usr/bin/env bash
set -e
npm test
npm run lint-staged
npm run lint
npm run flow
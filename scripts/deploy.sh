#!/usr/bin/env bash
npm package
package_name=$(ls *.tgz)
curl -F package=@${package_name} https://${GEM_TOKEN}^@push.fury.io/efimk-lu/
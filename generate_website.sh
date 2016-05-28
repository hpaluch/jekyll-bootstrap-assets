#/usr/bin/env bash

set -x
export JEKYLL_ENV=production
bundler exec jekyll build --config _config.yml
exit $?



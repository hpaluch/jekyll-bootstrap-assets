#/usr/bin/env bash

set -xe
cd `dirname $0`
rm -rf _site
export JEKYLL_ENV=production
bundler exec jekyll build --config _config.yml
# stupid fix...
cd _site && mv jquery.min.map assets/



#/usr/bin/env bash

set -x
export JEKYLL_ENV=development
# --incremental crashes with bootstrap-sass:
#   (undefined method `map' for nil:NilClass (NoMethodError))
bundler exec jekyll serve -t --watch -H 0.0.0.0 --config _config.yml,_config_server.yml


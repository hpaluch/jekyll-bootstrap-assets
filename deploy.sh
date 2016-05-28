#!/bin/bash

set -x
./generate_website.sh && cd _site &&
  tar cfz ../../site.tar.gz ./ && echo "Created ../site.tar.gz"


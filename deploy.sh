#!/bin/bash

set -xe
cd `dirname $0`
./generate_website.sh 
cd _site
 tar cfz ../../site.tar.gz ./ 
echo "Created ../site.tar.gz"


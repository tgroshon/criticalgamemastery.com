#!/bin/bash
set -e

echo "Cleaning public directory..."
rm -rf src/public

echo "Building site with hugo..."
./bin/hugo -s src/

echo "Copying files to S3..."
aws s3 cp --recursive src/public s3://criticalgamemastery.com --cache-control max-age=500 --acl public-read

echo "Success!"

#!/bin/bash
set -e

echo "Building site with hugo..."
hugo.exe

echo "Copying files to S3..."
aws.cmd s3 cp --recursive public s3://criticalgamemastery.com --cache-control max-age=500 --acl public-read

echo "Success!"
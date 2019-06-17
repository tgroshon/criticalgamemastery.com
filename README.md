# CriticalGameMastery.com

[![Build Status](https://travis-ci.org/tgroshon/criticalgamemastery.com.svg?branch=master)](https://travis-ci.org/tgroshon/criticalgamemastery.com)

The website is built with [Hugo](https://gohugo.io) and deployed on AWS using an
S3 bucket for static file hosting, CloudFront for content distribution,
Certificate Manager for SSL/TLS certificate, and Route53 for domain registration
and DNS management.

## Manual Deploy

Must install [Hugo](https://gohugo.io/getting-started/installing/) and [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html).

### Option 1: Use Deploy script

Execute either `./bin/deploy.sh` on Unix or `bin\deploy.bat` on Windows.

### Option 2: Step by step

1. Build site files by running `hugo -s src` (or `hugo.exe` on Windows)
2. Deploy files to S3:

Unix:

`aws s3 cp --recursive src/public s3://criticalgamemastery.com --cache-control max-age=500 --acl public-read`

Or Windows

`aws s3 cp --recursive src\public s3://criticalgamemastery.com --cache-control max-age=500 --acl public-read`

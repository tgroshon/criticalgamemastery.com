# CriticalGameMastery.com

The website is built with [Hugo](https://gohugo.io) and deployed on AWS using an
S3 bucket for static file hosting, CloudFront for content distribution,
Certificate Manager for SSL/TLS certificate, and Route53 for domain registration
and DNS management.

## Manual Deploy

To build and deploy the latest website files, do the following:

1. Change directories to `src`
2. Build site files by running `hugo` (or `hugo.exe` on Windows)
3. Deploy built files to S3 with [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html): `aws s3 cp --recursive public s3://criticalgamemastery.com --cache-controle max-age=500 --acl public-read`

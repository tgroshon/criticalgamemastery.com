@echo off

setlocal
:PROMPT
SET /P AREYOUSURE=Are you sure you want to deploy? (Y/[N])
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

echo "Building site with hugo..."
call hugo

echo "Copying files to S3..."
call aws s3 cp --recursive public s3://criticalgamemastery.com --cache-control max-age=500 --acl public-read

echo "Success!"
:END
endlocal
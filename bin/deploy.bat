@echo off

setlocal
:PROMPT
SET /P AREYOUSURE=Are you sure you want to deploy? (Y/[N])
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

echo "Cleaning public directory..."
@RD /S /Q "src\public"

echo "Building site with hugo..."
call hugo.exe -s src

echo "Copying files to S3..."
call aws.cmd s3 cp --recursive src\public s3://criticalgamemastery.com --cache-control max-age=500 --acl public-read

echo "Success!"

:END
endlocal
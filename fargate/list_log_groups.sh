#!/bin/bash
if [ -z "${AWS_PROFILE}" ]
then
  echo "$0: you need to specify AWS_PROFILE=..."
  exit 1
fi
aws logs describe-log-groups | jq '.logGroups[] | select(.logGroupName == "sds-logs") | .logGroupName'

#!/bin/bash

AGE=`grep PASS_MAX_DAYS /etc/login.defs | grep -v "#" | awk -F " " '{print $2}'`

echo -ne "Control: 5.5.1.2 Ensure password expiration is 365 days or less: "

if [[ $AGE -lt 36 ]]
then
	echo  "PASS"
else
	echo  "FAILED"
fi

#!/bin/bash

# FOO, GOO and HOO automatically created in the beginning
# A FOR loop is used to go through each of the parameters. "$@" sets the value of i equal to each of the parameter one by one.
# Each parameter must be an existing file in the working directory i.e. foo, goo and hoo.

touch -t 202103081800 foo
touch -t 202103081801 goo
touch -t 202103081802 hoo

for i in "$@"; do

sec=$(stat -c %Y "$i")	# This command returns the age of the file in seconds and stores it in a variable 'sec'.
						# Using seconds is easier as it is just a single integer.

if [[ $sec -gt $temp ]]	# The IF statement checks if the current file has a higher number than the previous one.
then					# If it does, then the new highest file value is stored in the 'oldest' variable.
  temp=$sec
  oldest=$i
fi

done
echo $oldest			# When all the variables are done being checked, it returns the file with the oldest age in seconds.
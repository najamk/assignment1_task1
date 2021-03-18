#!/bin/bash

# The script will return "This is funny." if any argument is given.
# Executing script without an argument will result in "This is NOT funny."

# The argument in the first paramter position is stored as a variable "var".
var=$1

# Then the variable is tested with the paramter -z which returns true if empty.
# If no argument is given, we want it to say "NOT funny"
# and if it is not empty, i.e. a argument is given, it will return "funny".
if test -z "$var"
then
  echo "This is NOT funny."
else
  echo "This is funny."
fi
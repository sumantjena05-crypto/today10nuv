#!/bin/bash
read -p "Enter marks: " marks

# ensure marks is an integer
if ! [[ "$marks" =~ ^[0-9]+$ ]]; then
  echo "Please enter a valid integer number."
  exit 1
fi

if [ "$marks" -gt 90 ]; then
  echo "Distinction"
elif [ "$marks" -ge 75 ] && [ "$marks" -le 90 ]; then
  echo "First class"
elif [ "$marks" -ge 60 ] && [ "$marks" -lt 75 ]; then
  echo "Second class"
elif [ "$marks" -ge 35 ] && [ "$marks" -lt 60 ]; then
  echo "Pass"
else
  echo "Fail"
fi


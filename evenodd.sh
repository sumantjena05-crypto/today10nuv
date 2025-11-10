#!/bin/bash
read -p "Enter a number: " num

# validate integer (allow negative)
if ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
  echo "Please enter an integer."
  exit 1
fi

if [ $(( num % 2 )) -eq 0 ]; then
  echo "Even"
else
  echo "Odd"
fi 

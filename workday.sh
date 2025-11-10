#!/bin/bash
read -p "Enter day (e.g., monday): " day
# normalize to lowercase
day=$(echo "$day" | tr '[:upper:]' '[:lower:]')

case "$day" in
  monday|tuesday|wednesday|thursday|friday)
    echo "Working day (Mon-Fri)"
    ;;
  saturday|sunday)
    echo "Holiday (Sat-Sun)"
    ;;
  *)
    echo "Invalid day. Please enter full day name (e.g., monday)."
    ;;
esac

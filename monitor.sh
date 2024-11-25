#!/bin/bash

# This is server monitoring script


# cup load check

CUP_LOAD=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4 }'  )
echo "CUP Usage: $CUP_LOAD "

# Memory Check

MEMORY=$(free | awk '/Mem:/{printf "%.2f", $3/$2 *100.0 }')
echo "MEMORY Usage: $MEMORY%"

# Disk Usage Check

DISK=$(df -h | awk '$NF=="/"{print $(NF-1)}' | sed 's/%//' )
echo "DISK Usage: $DISK% "


#!/bin/bash

#DATE=$(date)

START_TIME=$(date +%s)

sleep 10  # if $ this symbol is there it will be run in back ground

END_TIME=$(date +%s)
TOTAL_TIME=$(($END_TIME - $START_TIME))

echo "Timestamp executed: $TOTAL_TIME"

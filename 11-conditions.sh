#!/bin/bash

NUMBER=$1

if [ $(($NUMBER % 2)) -eq 0 ]; then
    echo "given number $NUMBER is Even"
else
    echo "gievn number $NUMBER is odd"
fi
#!/bin/bash

NUMBER1=100
NUMBER2=200
NAME=Devops

SUM=$(($NUMBER1+$NUMBER2+$NAME))

echo "SUM is : ${SUM}"

LEADERS=("MODI" "PUTIN" "TRUMP")

echo "all Leaders: ${LEADERS[@]}"
echo "all Leaders: ${LEADERS[0]}"
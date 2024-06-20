#!/bin/bash

read -p "Enter a number: " number
if  [[ $((number % 2)) -eq 0 ]]; then
	echo "$number is evern."
else 
	echo "$number is odd."
fi 

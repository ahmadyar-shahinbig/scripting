#!/bin/bash

read -p "What is your nmae?: " name

if [ $name == "Ahmad" ]; then
        echo "You ar blocked: $name"

elif [ $name == "Aiya" ]; then
        echo "You are admin, be aware! $name"

elif [ $name != "Abdul" ]; then
	echo "You are not authorized user: $name"

else
        echo "Welcome back $name"
fi

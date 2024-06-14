#!/bin/bash

read -p "What is your nmae?: " name

if [ $name != "Ahmad" ]; then
	echo "You ar not authorized user: $name"

elif [ $name == "Aiya" ]; then
	echo "You 've been blocked: $name"

else 	
	echo "Welcome back $name"
fi

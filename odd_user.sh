#!/bin/bash

# Check for superuser privileges (root)
if [[ $EUID -ne 0 ]]; then
	  echo "This script must be run with root privileges."
	    exit 1
fi

# Check for at least one argument (username)
if [[ $# -eq 0 ]]; then
	  echo "Usage: $0 <username> [comments]"
	    echo "Ahmadyar: "
	      echo "We are all tired from being here."
	        exit 1
fi

# Extract username and comments (separate comments)
username="$1"
comments="${@:2}"  # Capture all remaining arguments for comments

# Generate a random password
password=$(< /dev/urandom tr -dc A-Za-z0-9!@#$%^&*()-_=+[{\]};':,.<>?/ | fold -w 12 | head -n 1)

# Create the user account
useradd -m -s /bin/bash -c "${comments}" "$username"  &> /dev/null

# Check user creation status
if [[ $? -eq 0 ]]; then
	  echo "User '$username' created successfully."
  else
	    echo "Error creating user '$username'."
	      exit 1
fi

# Set the password for the user
echo "$password" | passwd --stdin "$username" &> /dev/null

# Check password setting status
if [[ $? -eq 0 ]]; then
	  echo "Password set for user '$username'."
  else
	    echo "Error setting password for user '$username'."
	      exit 1
fi

# Force password change on first login
passwd --expire "$username" &> /dev/null

# Display user information
echo "Username: $username"
echo "Password: $password" (**WARNING: Displaying password is not recommended**)
echo "Host: $(hostname)"

echo "**WARNING:** It is recommended to NOT display the password in the script output. Consider storing it securely or prompting the user to set a new password after creation."

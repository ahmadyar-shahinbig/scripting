#!/bin/bash

# Check if current directory is a Git repository
if [ -d .git ]; then
  # Git commands for adding, committing, and pushing
  git add .
  git commit -m ""  # You might want to provide a more descriptive message
  git push

  echo "Pushed changes to remote repository."
else
  # Ask for repository name if not in a Git repository
  read -p "Enter repository name: " repo_name

  # Check if repository exists (replace with your actual search method)
  # This script assumes a basic search mechanism. You'd need to customize it
  # for your specific environment (e.g., using a Git search API)
  if [ -d "$repo_name" ]; then
    cd "$repo_name"
    git add .
    git commit -m ""  # Consider adding a more descriptive message
    git push

    echo "Pushed changes to '$repo_name' repository."
  else
    echo "Repository '$repo_name' not found."
  fi
fi

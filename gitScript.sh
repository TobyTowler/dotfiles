#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <commit_message> <branch_name>"
    exit 1
fi

# Assigning arguments to variables
commit_message="$1"
branch_name="$2"

# Add all changes to the staging area
git add .

# Commit changes with the provided message
git commit -m "$commit_message"

# Push changes to the remote repository
git push origin "$branch_name"


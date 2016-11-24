#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
"D:\Program Files\hugo\hugo.exe"

# Add changes to git.
git add -A

# Commit changes.
git commit -m 'Site update'

# Push source and build repos.
git push origin master
git subtree push --prefix=public git@github.com:spencerlyon2/hugo_gh_blog.git gh-pages
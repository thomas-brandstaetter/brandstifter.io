#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# build the project
hugo

# commit changes
cd public
git add .
msg="build (`date`)"
git commit -m "$msg"

# push changes
git push origin master

cd ..


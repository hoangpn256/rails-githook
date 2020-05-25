#!/usr/bin/env bash

echo "Installing hooks..."

read -p "Input your git project path(project_path/.git) for install: " GIT_DIR 

# this command creates symlink to our pre-commit script
ln -s ../scripts/pre-commit.bash $GIT_DIR/hooks/pre-commit
ln -s ../scripts/pre-push.bash $GIT_DIR/hooks/pre-push
echo "Done!"

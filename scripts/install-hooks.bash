#!/usr/bin/env bash


echo "Installing hooks..."

read -p "Input your project path: " PROJECT_PATH

GIT_DIR=$PROJECT_PATH/.git

cp -R $(pwd)/scripts $GIT_DIR

# this command creates symlink to our pre-commit script
ln -s $GIT_DIR/scripts/pre-commit.bash $GIT_DIR/hooks/pre-commit
ln -s $GIT_DIR/scripts/pre-push.bash $GIT_DIR/hooks/pre-push
echo "Done!"

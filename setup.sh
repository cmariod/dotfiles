#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -s $DIR/.aliases ~/
ln -s $DIR/.bash_prompt ~/
ln -s $DIR/.bash_profile ~/
ln -s $DIR/.gitignore_global ~/
ln -s $DIR/.stCommitMsg ~/
#!/bin/bash

DOTFILES_DIR="$HOME/.dotfiles"

cd "$DOTFILES_DIR" || exit

for dir in */; do
    stow "$dir"
done


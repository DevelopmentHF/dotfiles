#!/bin/bash

# Dotfiles directory
DOTFILES_DIR=~/dotfiles

# List of dotfiles to copy
declare -a DOTFILES=(
  ".bashrc"
  ".vimrc"
  ".config/nvim/"
)

for file in "${DOTFILES[@]}"; do
	# Create parent directories if they don't exist
	mkdir -p "$DOTFILES_DIR/$(dirname "$file")"

	# actually copy now
	cp -r "$HOME/$file" "$DOTFILES_DIR/$file"
done

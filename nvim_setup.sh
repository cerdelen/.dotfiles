#!/bin/bash

check_command() {
    command -v "$1" &> /dev/null
}

# Install nvim
if ! check_command nvim; then
	echo "Trying to install nvim"
	brew install neovim 
else
	echo "nvim already installed ✅"
fi

# Install zellij
if ! command -v zellij &> /dev/null; then
	echo "Trying to install zellij"
	cargo install --locked zellij
else
	echo "zellij already installed ✅"
fi

# Install wezterm
if ! command -v wezterm &> /dev/null; then
	echo "Trying to install wezterm"
	brew install --cask wezterm
else
	echo "wezterm already installed ✅"
fi

# Install bacon
if ! command -v bacon &> /dev/null; then
	echo "Trying to install bacon"
	cargo install --locked bacon
else
	echo "bacon already installed ✅"
fi

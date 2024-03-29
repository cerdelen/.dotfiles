#!/bin/bash

check_command() {
    command -v "$1" &> /dev/null
}

# Install Rust (zellij and wezterm run on Rust)
if ! command -v rustup &> /dev/null || ! command -v cargo &> /dev/null || ! command -v rustc &> /dev/null; then
	echo "Rust, Rustup or Cargo is not installed. Trying to install Rust"
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
else
	echo "Rust and tools already installed ✅"
fi

if ! command -v rustup &> /dev/null || ! command -v cargo &> /dev/null || ! command -v rustc &> /dev/null; then
	echo "Error installing Rust and its tools, please install manually"
	exit 1
fi

# Install nvim
if ! check_command nvim; then
	echo "Trying to install nvim"
	brew install neovim 
	echo "# nvim things" >> ~/.zshrc
	echo export EDITOR=nvim >> ~/.zshrc
	echo >> ~/.zshrc
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

# Install nerdfont
nerd_font_files=("MesloLGLNerdFontMono-Bold.ttf" "MesloLGLNerdFontMono-BoldItalic.ttf" "MesloLGLNerdFontMono-Italic.ttf" "MesloLGLNerdFontMono-Regular.ttf")
for font_file in "${nerd_font_files[@]}"; do
    if [ ! -f "$HOME/Library/Fonts/$font_file" ]; then
        echo "Nerd Font file '$font_file' is missing. Please install it in ~/Library/Fonts"
    fi
done

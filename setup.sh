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

# Install nerdfont
nerd_font_files=("MesloLGLNerdFontMono-Bold.ttf" "MesloLGLNerdFontMono-BoldItalic.ttf" "MesloLGLNerdFontMono-Italic.ttf" "MesloLGLNerdFontMono-Regular.ttf")
for font_file in "${nerd_font_files[@]}"; do
    if [ ! -f "$HOME/Library/Fonts/$font_file" ]; then
        echo "Nerd Font file '$font_file' is missing. Please install it in ~/Library/Fonts"
    fi
done

# Install ripgrep (dont know how ot check if installed)
if brew list | grep -q "ripgrep"; then
    echo "ripgrep is already."
else
	brew install ripgrep
fi

# Install nvim
if ! check_command nvim; then
	echo "Trying to install nvim"
	# brew install neovim 
else
	echo "nvim already installed ✅"
fi

# Install bat
if ! command -v bat &> /dev/null; then
	echo "Trying to install bat"
	brew install bat
else
	echo "bat already installed ✅"
fi

# Install batgrep
if ! command -v batgrep &> /dev/null; then
	echo "Trying to install batgrep"
	brew install eth-p/software/bat-extras-batgrep
else
	echo "batgrep already installed ✅"
fi


# Install gitui
if ! command -v gitui &> /dev/null; then
	echo "Trying to install gitui"
	brew install gitui
else
	echo "gitui already installed ✅"
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


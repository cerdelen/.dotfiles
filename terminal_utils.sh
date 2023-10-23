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

# Install ripgrep
if brew list | grep "ripgrep" > /dev/null; then
    echo "ripgrep is already ✅"
else
	brew install ripgrep
fi

# Install fzf
if brew list | grep "fzf" > /dev/null; then
    echo "fzf is already ✅"
else
	brew install fzf
fi

# Install bat
if ! command -v bat &> /dev/null; then
	echo "Trying to install bat"
	brew install bat
	echo "# bat as new cat" >> ~/.zshrc
	echo alias cat=bat >> ~/.zshrc
	echo >> ~/.zshrc
	mkdir -p ~/.config/bat
	echo --theme="Dracula" > ~/.config/bat/config
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

# Install exa 
if ! command -v exa &> /dev/null; then
	echo "Trying to install exa"
	cargo install exa
	echo "# exa things" >> ~/.zshrc
	echo alias ls=exa >> ~/.zshrc
	echo alias ee="exa -lahF" >> ~/.zshrc
	echo >> ~/.zshrc
else
	echo "exa already installed ✅"
fi

# Install zoxide
if ! command -v zoxide &> /dev/null; then
	echo "Trying to install zoxide"
	cargo install zoxide
	autoload -U compinit
	echo "# zoxide things" >> ~/.zshrc
	echo eval "$(zoxide init zsh)" >> ~/.zshrc
	echo alias cd=z >> ~/.zshrc
	echo alias cc=zi >> ~/.zshrc
	echo >> ~/.zshrc
else
	echo "zoxide already installed ✅"
fi

#!/bin/sh

if [ ! -d ~/.tmuxifier ]
then 
    git clone https://github.com/jimeh/tmuxifier ~/.tmuxifier

    echo "PATH=\$PATH:\$HOME/.tmuxifier/bin" >> ~/.bashrc
    echo "eval \$(tmuxifier init -)" >> ~/.bashrc
    echo "export EDITOR=nvim" >> ~/.bashrc
else
    echo "tmuxifier already exists"
fi

if [ ! -f ~/.tmux.conf ]
then
    cp ./.tmux.conf ~
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    tmux source ~/.tmux.conf
else
    echo "tmux already setup"
fi

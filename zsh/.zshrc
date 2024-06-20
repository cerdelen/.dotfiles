# bat things
if type "bat" > /dev/null; then
    alias cat=bat
fi

# batgrep things
if type "batgrep" > /dev/null; then
    alias grep=batgrep
fi

# exa things
if type "exa" > /dev/null; then
    alias ls=exa
    alias ee="exa -lahF"
fi

# nvim things
export EDITOR=nvim

# zoxide things
if type "z" > /dev/null; then
    eval "$(zoxide init zsh)"
    alias cd=z
    alias cc=zi
fi

# Set up fzf key bindings and fuzzy completion
if type "fzf" > /dev/null; then
    source <(fzf --zsh)
fi
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

if type "oh-my-posh" > /dev/null; then
    if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
        eval "$(oh-my-posh init zsh --config ~/.config/omp/zen.toml)"
    fi
fi

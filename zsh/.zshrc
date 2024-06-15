# bat things
alias cat=bat

# batgrep things
alias grep=batgrep

# exa things
alias ls=exa
alias ee="exa -lahF"

# nvim things
export EDITOR=nvim

# zoxide things
eval "$(zoxide init zsh)"
alias cd=z
alias cc=zi

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
    eval "$(oh-my-posh init zsh --config ~/.config/omp/zen.toml)"
fi


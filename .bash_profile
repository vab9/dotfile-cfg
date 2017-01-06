# ================================
# ENVIRONMENT VARIABLES
# ================================

# Set Pyenv stuff
eval "$(pyenv init -)"

# GNU coreutils from homebrew instead of BSD from OSX
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# Man pages also from GNU
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# ================================
# RUST THINGS
# ================================

# Setting PATH for Rust / Cargo
export PATH="$PATH:$HOME/.cargo/bin"

# Rust source code (for autocomplete etc)
export RUST_SRC_PATH="$HOME/.cargo/rustc-src/src"

# Cargo Home directory
export CARGO_HOME="$HOME/.cargo"

# ================================
# TERMINAL CUSTOMIZATION
# ================================

# Fancy Prompt + Color
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# ls alias + color
alias ls='ls -GFh'
# custom aliases nate landeau
alias cp='cp -iv'              # Preferred 'cp' implementation
alias mv='mv -iv'              # Preferred 'mv' implementation
alias mkdir='mkdir -pv'        # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'          # Preferred 'ls' implementation
alias less='less -FSRXc'       # Preferred 'less' implementation
cd() { builtin cd "$@"; ls; }  # Always list directory contents upon 'cd'
alias f='open -a Finder ./'    # f: Opens current directory in MacOS Finder
# Show git status short form
alias gg='git status -s'

# Bash Completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

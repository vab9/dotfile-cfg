# ================================
# ENVIRONMENT VARIABLES
# ================================

# Adding sbin to path (homebrew)
set -gx PATH /usr/local/sbin $PATH

# Setting Pyenv automatically
status --is-interactive; and source (pyenv init -|psub)

# GNU coreutils from homebrew instead of BSD from OSX
set -gx PATH /usr/local/opt/coreutils/libexec/gnubin $PATH

# Man pages also
set -gx MANPATH /usr/local/opt/coreutils/libexec/gnuman /usr/local/opt/findutils/share/man (manpath)

# ================================
# RUST THINGS
# ================================

# Setting PATH for Rust / Cargo
set -gx PATH $PATH $HOME/.cargo/bin

# Rust source code (for autocomplete etc)
set -gx RUST_SRC_PATH $HOME/.cargo/rustc-src/src

# Cargo Home directory
set -gx CARGO_HOME $HOME/.cargo


# ================================
# FOR SETTING PROMPT
# ================================

# Fish git prompt
set __fish_git_prompt_showupstream "informative"
set __fish_git_prompt_show_informative_status 1
set __fish_git_prompt_showdirtystate 1
set __fish_git_prompt_showstashstate 1
set __fish_git_prompt_hideuntrackedfiles 1
set __fish_git_prompt_showupstream 1

# Git prompt colors
set __fish_git_prompt_color_branch magenta --bold
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red
set __fish_git_prompt_color_dirtystate blue
set __fish_git_prompt_color_stagedstate yellow
set __fish_git_prompt_color_invalidstate red
set __fish_git_prompt_color_untrackedfiles $fish_color_normal
set __fish_git_prompt_color_cleanstate green --bold

# Status Chars
set __fish_git_prompt_char_upstream_ahead "↑"
set __fish_git_prompt_char_upstream_behind "↓"
set __fish_git_prompt_char_upstream_prefix ""
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_untrackedfiles "…"
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_conflictedstate "✖"
set __fish_git_prompt_char_cleanstate "✔"

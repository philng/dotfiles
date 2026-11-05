# ~/.zshrc (from github.com/<you>/dotfiles, linked into place by machine-setup)

# History
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt share_history hist_ignore_dups hist_ignore_space autocd

# User tools (Claude Code, mise, uv, ...) live in ~/.local/bin
path=(~/.local/bin $path)
(( $+commands[mise] )) && eval "$(mise activate zsh)"

# Plugins: listed in ~/.zsh_plugins.txt, loaded by antidote
if [[ -f ~/.antidote/antidote.zsh ]]; then
  source ~/.antidote/antidote.zsh
  antidote load
fi

autoload -Uz compinit && compinit

# fzf: Ctrl+R searches history, Ctrl+T finds files, Alt+C cd's
if fzf --zsh >/dev/null 2>&1; then
  source <(fzf --zsh)
elif [[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ]]; then  # older fzf (Ubuntu)
  source /usr/share/doc/fzf/examples/key-bindings.zsh
fi

# Up/Down search history for what you've typed so far
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Aliases
if (( $+commands[eza] )); then
  alias ls='eza --group-directories-first'
  alias ll='eza -l --git --group-directories-first'
  alias la='eza -la --git --group-directories-first'
fi
(( $+commands[batcat] )) && alias bat=batcat   # Debian/Ubuntu name
alias g=git
alias gs='git status -sb'
alias gl='git log --oneline --graph --decorate -20'

# Prompt: user@host (on SSH), directory and git branch
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' %F{magenta}%b%f'
setopt prompt_subst
PROMPT='${SSH_CONNECTION:+%F{yellow}%n@%m%f }%F{blue}%~%f${vcs_info_msg_0_} %(?.%F{green}.%F{red})❯%f '

# Machine-specific additions (not in the repo)
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

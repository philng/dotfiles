# load zgen
source "${HOME}/.zgen/zgen.zsh"

# if the init scipt doesn't exist
if ! zgen saved; then
  zgen prezto prompt theme 'paradox'

  zgen prezto
  zgen prezto git
  zgen prezto history-substring-search

  zgen load zlsun/solarized-man

  zgen save
fi

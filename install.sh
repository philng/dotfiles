#!/usr/bin/env bash
# Links everything under home/ into your home directory. Safe to re-run.
# An existing file that isn't already a link is moved to <file>.pre-dotfiles.
# (machine-setup does the same thing itself; this is for machines without it.)
set -euo pipefail
cd "$(dirname "$0")/home"
find . -type f | sed 's#^\./##' | while read -r f; do
  target="$HOME/$f"
  mkdir -p "$(dirname "$target")"
  if [ -e "$target" ] && [ ! -L "$target" ]; then
    mv "$target" "$target.pre-dotfiles"
    echo "backed up $target"
  fi
  ln -sfn "$PWD/$f" "$target"
  echo "linked $target"
done

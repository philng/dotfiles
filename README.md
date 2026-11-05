# dotfiles

Shell, editor and terminal config, used by
[machine-setup](https://github.com/philng/machine-setup), which clones this repo
to `~/.dotfiles` and links every file under `home/` into your home directory.

| File | What |
|---|---|
| `home/.zshrc` | history, `~/.local/bin` on PATH, mise, antidote plugins, fzf keys, eza/git aliases, a small prompt (user@host only over SSH) |
| `home/.zsh_plugins.txt` | antidote plugins: completions, autosuggestions, history substring search, syntax highlighting |
| `home/.vimrc` | vim-plug plugins, Catppuccin Mocha, 2-space indent, `jj` to leave insert mode |
| `home/.tmux.conf` | mouse, windows from 1, `\|`/`-` splits, Catppuccin-style status bar |
| `home/.config/ghostty/config` | Catppuccin Mocha, JetBrains Mono Nerd Font |
| `home/.config/git/ignore` | global gitignore |

Machine-specific shell bits go in `~/.zshrc.local` (not in the repo).

## Without machine-setup

```sh
git clone https://github.com/philng/dotfiles ~/.dotfiles
~/.dotfiles/install.sh
```

Any existing file is moved to `<file>.pre-dotfiles` before it's replaced by a link.
Plugins need [antidote](https://getantidote.github.io) (`~/.antidote`) and
[vim-plug](https://github.com/junegunn/vim-plug); machine-setup installs both.

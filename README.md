# Trent config

Base configs for my environments
* [vim](.vimrc)
* [tmux](.tmux.conf)

## Install

```
git clone --bare 'git@github.com:trentearl/system-config.git' "$HOME/.global-config.git"
git --git-dir="$HOME/.global-config.git" --work-tree="$HOME" checkout
```


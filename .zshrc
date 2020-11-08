export TERM="xterm-256color"
export LANG="en_US.UTF-8"

test -f "$HOME/.config/path" && source "$HOME/.config/path"
test -f "$HOME/.config/secrets" && source "$HOME/.config/secrets"

export HISTFILE="$HOME/.res/history"
export HISTSIZE=1000000
export SAVEHIST=10000000
setopt INC_APPEND_HISTORY

setopt extendedglob
unsetopt beep
setopt no_beep
setopt interactive_comments
setopt list_types
setopt hist_ignore_dups
setopt hist_expire_dups_first
setopt hist_ignore_space
setopt extended_history
setopt append_history
setopt auto_menu
setopt auto_pushd


export KEYTIMEOUT=1
bindkey -v
bindkey '^R' history-incremental-pattern-search-backward
bindkey '^F' history-incremental-pattern-search-forward


zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit

export POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
export POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)
export POWERLEVEL9K_MODE='nerdfont-complete'

export POWERLEVEL9K_HOME_ICON=''
export POWERLEVEL9K_HOME_SUB_ICON=''

export POWERLEVEL9K_HIDE_BRANCH_ICON='true'
export POWERLEVEL9K_SHORTEN_DELIMITER=''
export POWERLEVEL9K_SHORTEN_STRATEGY='truncate_from_right'
export POWERLEVEL9K_VCS_SHORTEN_STRATEGY='truncate_from_right'
export POWERLEVEL9K_VCS_SHORTEN_DELIMITER=''
export POWERLEVEL9K_VCS_HIDE_TAGS='true'
export POWERLEVEL9K_VCS_GIT_ICON=''
export POWERLEVEL9K_VCS_SHORTEN_LENGTH='1'
export POWERLEVEL9K_VCS_SHORTEN_MIN_LENGTH='1'

export POWERLEVEL9K_STATUS_VERBOSE='false'

export ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

alias py='python'
alias vbox='VBoxManage'

export IP_CACHE_EXPIRE=180
export IP_GEO_CACHE_EXPIRE=86400

export EDITOR=vim
export VISUAL=vim

test -f "$HOME/.config/zsh-init" && source "$HOME/.config/zsh-init"
alias configgit="/usr/bin/git --git-dir=$HOME/.global-config.git/ --work-tree=$HOME"
alias linuxconfiggit='/usr/bin/git --git-dir=$HOME/.linuxdotfiles/ --work-tree=$HOME'
alias rg="rg -g '!*__test__*' -g '!*.log'"

### Added by Zplugin's installer
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

### End of Zplugin installer's chunk

zplugin load Powerlevel9k/powerlevel9k
zplugin load zsh-users/zsh-syntax-highlighting
zplugin load ael-code/zsh-colored-man-pages


bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

test -f "$HOME/.config/platformspecific.zshrc" && source "$HOME/.config/platformspecific.zshrc"

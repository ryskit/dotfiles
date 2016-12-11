# --------------------
# Alias
# --------------------
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias lla='ls -la'
alias rm='rm -i'
# sudo の後のコマンドでエイリアスを有効にする
alias sudo='sudo '

# --------------------
# Git Ariases
# --------------------
export GIT_EDITOR="/Applications/MacVim.app/Contents/MacOS/Vim"
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add -A'
alias gb='git branch'
alias gbd='git branch -d '
alias gba='git branch -a'
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gd='git diff'
alias gda='git diff HEAD'
alias gi='git init'
alias gl='git log'
alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gf='git fetch'
alias gm='git merge --no-ff'
alias gpl='git pull'
alias gph='git push'
alias gs='git status'
alias gss='git status -s'
alias gst='git stash'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gstd='git stash drop'
alias gcnfl='git config -l'

#--------------------
# export
#--------------------
export PATH="/Applications/MAMP/bin/php/php7.0.0/bin:$PATH"
export PATH="/Applications/MAMP/Library/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH=/usr/local/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PGDATA=/usr/local/var/postgres
eval "$(rbenv init -)"
export PYENV_ROOT=${HOME}/.pyenv
if [ -d "${PYENV_ROOT}" ]; then
  export PATH=${PYENV_ROOT}/bin:$PATH
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# 色を使用出来るようにする
autoload -Uz colors
colors

# プロンプト 1行表示
# PROMPT="%~ %# "
# 2行表示
PROMPT="[%n@%m %F{cyan}%T%f]%{${reset_color}%} %~ %# "

# 補完
# 補完機能を有効にする
autoload -Uz compinit
compinit

# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# ../ の後は今いるディレクトリを補完しない
zstyle ':completion:*' ignore-parents parent pwd ..

# sudo の後ろでコマンド名を補完する
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
/usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

# ps コマンドのプロセス名補完
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# ディレクトリ名だけでcdする
setopt auto_cd

# 高機能なワイルドカード展開を使用する
setopt extended_glob

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/rysk/.sdkman"
[[ -s "/Users/rysk/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/rysk/.sdkman/bin/sdkman-init.sh"

export GOPATH="$HOME/dev"
export PATH="$GOPATH/bin:$PATH" 

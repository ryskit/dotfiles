# Created by newuser for 5.1.1
export PATH=/usr/local/bin:$PATH

# 色を使用出来るようにする
autoload -Uz colors
colors

# プロンプト 1行表示
# PROMPT="%~ %# "
# 2行表示
PROMPT="%{${fg[green]}%}[%n@%m]%{${reset_color}%} %~%# "

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


# --------------------
# Ariases
# --------------------
alias lla='ls -la'
alias rm='rm -i'
# sudo の後のコマンドでエイリアスを有効にする
alias sudo='sudo '

# --------------------
# Git Ariases
# --------------------
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add -A'
alias gb='git branch'
alias gbd='git branch -d '
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
alias gm='git merge --no-ff'
alias gpl='git pull'
alias gph='git push'
alias gs='git status'
alias gss='git status -s'
alias gst='git stash'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gstd='git stash drop'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/rysk/.sdkman"
[[ -s "/Users/rysk/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/rysk/.sdkman/bin/sdkman-init.sh"

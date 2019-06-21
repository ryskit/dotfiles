# alias
alias vim='nvim'

# git alias
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add -A'
alias gb='git branch'
alias gbd='git branch -d'
alias gba='git branch -a'
alias gc='git commit'
alias gcm='git commit -m'
alias gd='git diff'
alias gco='git checkout'
alias gcob='git checkout -b'
alias glg='git log --graph --oneline --decorate --all'
alias gs='git status'
alias gcnfl='git config -l'

# theme
set -g fish_theme bobthefish

# development environments
source  ~/.cargo/env
#nodenv init - | source
#rbenv init - | source
#pyenv init - | source
direnv hook fish | source

# enable local tools
set -gx PATH $HOME/bin $PATH
set -g fish_user_paths "/usr/local/opt/gettext/bin" $fish_user_paths
set -Ux fish_user_paths $HOME/.anyenv/bin $fish_user_paths

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \cf peco_select_ghq_repository
end

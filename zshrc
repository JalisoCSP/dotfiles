export EDITOR=vim

# Homebrew
export PATH=/usr/local/bin:$PATH
export HOMEBREW_AUTO_UPDATE_SECS=600000

# ASDF
. "$HOME/.asdf/asdf.sh"
# Add PATH for tmux
# https://github.com/thoughtbot/dotfiles/issues/587#issuecomment-368998454
PATH="$HOME/.asdf/bin:$PATH"
PATH="$HOME/.asdf/shims:$PATH"

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.dotfiles/zsh/git-completion.bash
fpath=(~/.dotfiles/zsh $fpath)
autoload -Uz compinit && compinit

# Rosetta flags
# libffi
export LDFLAGS="-L/usr/local/opt/libffi/lib"
export CPPFLAGS="-I/usr/local/opt/libffi/include"
export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"

# rails
alias rs='rails server'
alias rc='rails console'
alias rdbm='rails db:migrate'
alias rdbr='rails db:rollback'
alias rdbre='rails db:migrate:redo'

# git
alias gs='git status'
alias gb='git branch'
alias gl='git log'
alias gd='git diff'
alias ga='git add'
alias gc='git commit -v'
alias gca='git commit --amend -v'
alias gph='git push'
alias gpho='git push origin'
alias gp='git pull'
alias gpo='git pull origin'
alias gpom='git pull origin master'
alias gco='git checkout'
alias gcom='git checkout master'
alias gcl='git clone'
alias grh='git reset --hard'

# https://kamal-deploy.org/docs/installation/
alias kamal='docker run -it --rm -v "${PWD}:/workdir" -v "/run/host-services/ssh-auth.sock:/run/host-services/ssh-auth.sock" -e SSH_AUTH_SOCK="/run/host-services/ssh-auth.sock" -v /var/run/docker.sock:/var/run/docker.sock ghcr.io/basecamp/kamal:latest'

# projects
alias work='cd ~/workspace'
alias apollo='cd ~/workspace/apollo'
alias doorguard='cd ~/workspace/doorguard'
alias zap='cd ~/workspace/zapnito/zapnito'

# misc
alias mux='tmuxinator'
alias dotfiles='cd ~/.dotfiles'
alias aliases='vim ~/.dotfiles/zshrc'
alias vimrc='vim ~/.dotfiles/vimrc'

alias killrails='sudo kill $(sudo losf -t -i:3000)'
alias rnr='bundle exec rspec && rubocop'

# notes
alias notes='vim ~/Documents/Notes/main.txt'
alias billing='vim ~/Documents/Notes/billing.txt'
alias stew='vim ~/Documents/Notes/stew.txt'
alias mary='vim ~/Documents/Notes/mary.txt'

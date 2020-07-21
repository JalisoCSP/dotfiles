export EDITOR=vim

# rbenv
eval "$(rbenv init -)"

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

# projects
alias work='cd ~/workspace'
alias apollo='cd ~/workspace/apollo'
alias doorguard='cd ~/workspace/doorguard'

# misc
alias mux='tmuxinator'
alias dotfiles='cd ~/.dotfiles'
alias aliases='vim ~/.dotfiles/zshrc'
alias vimrc='vim ~/.dotfiles/vimrc'

# notes
alias notes='vim ~/Documents/Notes/main.txt'
alias billing='vim ~/Documents/Notes/billing.txt'
alias stew='vim ~/Documents/Notes/stew.txt'
alias mary='vim ~/Documents/Notes/mary.txt'


export EDITOR=vim

# rbenv
eval "$(rbenv init -)"

# git
alias gs='git status'
alias gd='git diff'
alias gc='git commit -v'
alias ga='git commit --amend -v'
alias gph='git push'
alias gpho='git push origin'
alias gpl='git pull'
alias gpo='git pull origin'
alias gpom='git pull origin master'
alias gco='git checkout'
alias gcl='git clone'

alias aliases='vim ~/.dotfiles/zshrc'
alias mux='tmuxinator'

# projects
alias work='cd ~/workspace'
alias apollo='cd ~/workspace/apollo'
alias doorguard='cd ~/workspace/doorguard'

# my aliases
alias c='clear'
alias reboot='sudo reboot'
alias uu='sudo apt-get update && sudo apt-get upgrade'
alias ii='sudo apt-get install'

..() {
  N=$(($1))
  if [ $N -lt 1 ]; then
 N=1
  fi
  while ((N)); do
 cd ..
 let N-=1
  done;
} # ..5 = go up 5 folders https://bit.ly/2I7wbhj

alias w='cd /home/ruben/workspace/projects'

alias breload='source ~/.bashrc'
alias breboot='source ~/.bashrc'
alias brefresh='source ~/.bashrc'

alias editalias='gedit ~/.bashrc'
alias editbash='gedit ~/.bashrc'
alias editbashrc='gedit ~/.bashrc'

alias editaliasg='git config --global --edit'
alias editgitconfig='git config --global --edit'
alias editgit='git config --global --edit'

    # git
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gba='git branch -a'
alias gbb="git for-each-ref --sort=-committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"
alias gbbb="git for-each-ref --sort=-committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"

alias gc='git commit'
alias gac='git add -A && git commit -m'

alias gck="git checkout"
alias gckb="git checkout -b"
alias gd='git diff'

alias gll="git log"
alias gl="git log --oneline"
alias glo='git log --pretty=oneline'
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glgg="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
alias glp="git log --decorate --graph --abbrev-commit --date=relative"
alias gm='git merge'

alias gp='git push'
alias gpo="git push -u origin"

alias grs='git reset'
alias grv='git revert'
alias grgu='git remote get-url'
alias gs="git status"
alias gss="git status -sb"
alias gsh='git stash'
alias gt='git tag'
alias gw='git whatchanged'
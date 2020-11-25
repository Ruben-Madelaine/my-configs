# ..5 = go up 5 folders https://bit.ly/2I7wbhj
..() {
  N=$(($1))
  if [ $N -lt 1 ]; then
 N=1
  fi
  while ((N)); do
 cd ..
 let N-=1
  done;
}

# Bash configs

## Append history after each command
shopt -s histappend
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"


## basic aliases
alias ar='yes | sudo apt-get autoremove'
alias c='clear'
alias doc="cd ~/Documents"
alias dw="cd ~/Downloads"
alias dk="cd ~/Desktop"

alias editalias='gedit /home/ruben/workspace/projects/configs/.bash_aliases'
alias editbash='gedit /home/ruben/workspace/projects/configs/.bashrc'
alias editgit='gedit /home/ruben/workspace/projects/configs/.gitconfig'

alias i='sudo apt-get install'
alias ii='yes | sudo apt-get install'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias p='cd /home/ruben/workspace/projects' 
alias pbcopy="xclip -sel clip"
alias pbpaste='xclip -selection clipboard -o'
alias reboot='sudo reboot'
alias refresh='source ~/.bashrc'
alias r=refresh
alias sleep="systemctl suspend"
alias s="systemctl suspend"

alias u='yes | sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt clean -y && sudo apt autoclean -y'
alias ui='sudo apt-get --purge remove'
alias ud='yes | sudo apt-get update'
alias ug='yes | sudo apt-get upgrade'


 # git
alias g='git'
alias ga='git add'
alias gaa='git add -A'
alias gac='git add -A && git commit'
alias gb='git branch'
alias gba='git branch -a'
alias gbb="git for-each-ref --sort=-committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"
alias gbbb="git for-each-ref --sort=-committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"

alias gc='git commit'
alias gcamm='git commit --amend'
alias gcam='git commit --amend --no-edit'

alias gck="git checkout"
alias gckb="git checkout -b" #create new branch
alias gd='git diff'

alias gl="git log --oneline"
alias gll="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all" #UPDATE
alias glp="git log --decorate --graph --abbrev-commit --date=relative"
alias glpa="glp --all" #UPDATE
alias gm='git merge'

alias gpl='git pull'
alias gpo="git push -u origin"
alias gps='git push' #NEW
#alias gpf='git push -f' #BE CAREFUL

# Remove branches that have already been merged with main.
# a.k.a. ‘delete merged’
alias rmb="!git branch --merged | grep -v '\\*' | xargs -n 1 git branch -d"
alias prune-local="git branch --merged | grep -v master | grep -v dev | xargs -n 1 git branch -d"
alias prune-all="git remote | xargs -n 1 git remote prune"
alias grs='git reset'
alias grsh='git reset --hard' #NEW
alias grv='git revert'
alias grb='git rebase' #NEW
alias grbi='git rebase -i' #NEW
alias grgu='git remote get-url'
alias gs="git status"
alias gss="git status -sb"
alias gsh='git stash'
alias gt='git tag'
alias gu='git reset HEAD --' # unstage a cartain file: git unstage fileA 
alias glast='git log -1 HEAD' # show last commit
alias gw='git whatchanged'
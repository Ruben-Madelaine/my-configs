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

## Append history after each command
shopt -s histappend
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
STYLE1='%C(auto)%h %<|(20)%gd %C(blue)%cr%C(reset) %gs (%s)'

## basic aliases
alias ar='yes | sudo apt-get autoremove'
alias c='clear'
alias conf='cd ~/.config'
alias cdp='cd /home/ruben/workspace/projects'
alias cdg='cd /home/ruben/workspace/git'

alias f='fish'
alias h='history'
alias i='sudo apt-get install'
alias ii='yes | sudo apt-get install'
alias l='ls -CF'
alias la='ls -A'
alias light='redshift -PO 5500'
alias light+='redshift -x'
alias ll='ls -alF'
alias logout='sudo pkill -KILL -u ruben'
alias mx='unimatrix -w -s 98 -l ckg && neofetch'
alias mxx='unimatrix -f -s 95 -l aAcCgGkn'
# alias neo="neofetch --source $(find /home/ruben/workspace/git/my-configs/neofetch/ascii -type f | shuf -n 1)"
alias night='redshift -PO 2800'
alias pip='pip3'
alias python='python3' 
alias pbcopy="xclip -sel clip"
alias pbpaste='xclip -selection clipboard -o'
alias reboot='sudo reboot'
alias r='source ~/.bashrc'
alias sleep="systemctl suspend"
alias s="systemctl suspend"
alias toilet1="toilet -f bigmono9 -F gay"

alias u='yes | sudo apt update && sudo apt full-upgrade && sudo apt autoremove && sudo apt clean && sudo apt autoclean'
alias ui='yes | sudo apt purge'
alias uii='yes | sudo apt autoremove && sudo apt --purge autoremove && sudo apt clean && sudo apt autoclean'
alias ud='yes | sudo apt update'
alias ug='yes | sudo apt upgrade'


 # git
alias g='git'
alias ga='git add'
alias gaa='git add -A'
alias gac='git add -A && git commit -m'
alias gb='git branch'
alias gba='git branch -a'
alias gbb="git for-each-ref --sort=-committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"
alias gbbb="git for-each-ref --sort=-committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"

alias gc='git commit -m'
alias gcamm='git commit --amend'
alias gcam='git commit --amend --no-edit'
alias gamd='git commit --amend --no-edit'

alias gck="git checkout"
alias gckb="git checkout -b" #create new branch
alias gd='git diff'

alias gll="git log --oneline"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all" #UPDATE
alias glp="git log --decorate --graph --abbrev-commit --date=relative"
alias glpa="glp --all" #UPDATE
alias gm='git merge'

alias gpl='git pull'
alias gpo="git push -u origin"
alias gps='git push' #NEW
alias gpsh='git push' #NEW
#alias gpf='git push -f' #BE CAREFUL

# Remove branches that have already been merged with main.
# a.k.a. ‘delete merged’
alias rmb="!git branch --merged | grep -v '\\*' | xargs -n 1 git branch -d"
alias prune-local="git branch --merged | grep -v master | grep -v dev | xargs -n 1 git branch -d"
alias prune-all="git remote | xargs -n 1 git remote prune"
alias grl="git reflog --format='%C(auto)%h %gd %C(green)(%cr) %C(reset) %gs (%s)'"
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

# #git moji
# :fire: Remove code or files.""
# :bug: Fix a bug.
# :zap: Improve performance.
# :ambulance: Critical hotfix.
# :sparkles: Introduce new features.
# :memo: Add or update documentation.
# :rocket: Deploy stuff.
# :tada: Begin a project.
# :white_check_mark: Add or update tests.
# :lock: Fix security issues.
# :bookmark: Release / Version tags.
# :construction: Work in progress.
# :heavy_plus_sign: Add a dependency.
# :heavy_minus_sign: Remove a dependency.
# :wrench: Add or update configuration files.
# :hammer: Add or update development scripts.
# :pencil2: Fix typos.
# :twisted_rightwards_arrows: Merge branches.
# :package: Add or update compiled files or packages.
# :alien: Update code due to external API changes.
# :truck: Move or rename resources (e.g.: files, paths, routes).
# :boom: Introduce breaking changes.
# :bulb: Add or update comments in source code.
# :beers: Write code drunkenly.
# :card_file_box: Perform database related changes.
# :building_construction: Make architectural changes.
# :see_no_evil: Add or update a .gitignore file.
# :alembic: Perform experiments.
# :label: Add or update types.
# :seedling: Add or update seed files.
# :wastebasket: Deprecate code that needs to be cleaned up.
# :adhesive_bandage: Simple fix for a non-critical issue.

# :arrow_up: Upgrade dependencies.
# :pushpin: Pin dependencies to specific versions.
# :construction_worker: Add or update CI build system.
# :recycle: Refactor code.

# alias g :star2:
# :floppy_disk:
# 🗑
# :cd:
# :adhesive_bandage: Simple fix of a non-critical issue.


# alias g 
# alias g 
# alias g 
# alias g 
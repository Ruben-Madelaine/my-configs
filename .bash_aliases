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


alias ddmount="sudo fdisk -l && sudo mount /dev/sd* /mnt"



look4(){
	my_var=$1
	sudo find ./ -name "$my_var" | rev | cut -d '/' -f1 | rev
	echo "The count is $(sudo find .//. -name "$my_var" -print | grep -c //)"
}

## Append history after each command
shopt -s histappend
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
STYLE1='%C(auto)%h %<|(20)%gd %C(blue)%cr%C(reset) %gs (%s)'

## basic aliases
alias ar='yes Y| sudo apt-get autoremove'
alias c='clear'
alias conf='cd ~/.config'
alias cdp='cd /home/ruben/workspace/projects'
alias cdg='cd /home/ruben/workspace/git'
alias dofus='cd ~/Games; ./Ankama\ Launcher-Setup-x86_64.AppImage'
alias dofus2="cd /home/ruben/.config/Ankama/zaap/dofus/; ./zaap-start.sh"

alias f='fish'
alias h='history'
alias i='yes Y| sudo apt install'
#alias ii='yes Y| sudo apt install > /dev/null 2>&1 &'
alias ii='screen -d -m yes Y| sudo apt install'
alias l='ls -CF'
alias la='ls -A'
alias d='redshift -PO 5500 > /dev/null 2>&1'
alias dd='redshift -x > /dev/null 5>&1'
#alias darker='redshift -O 2000 > /dev/null 2>&1'
# alias ll='ls -alF'
alias ll='exa --header --long -all'
alias logout='sudo pkill -KILL -u ruben'
alias mx='unimatrix -w -s 99 -l ckg && neofetch'
alias mxx='unimatrix -f -s 95 -l aAcCgGkn'
# alias neo="neofetch --source $(find /home/ruben/workspace/git/my-configs/neofetch/ascii -type f | shuf -n 1)"
alias n='redshift -PO 2800 > /dev/null 2>&1'
alias nn='redshift -PO 2000 > /dev/null 2>&1'
alias nnn='redshift -PO 1500 > /dev/null 2>&1'
alias pip='pip3'
alias python='python3' 
alias py='python3' 
alias pbcopy="xclip -sel clip"
alias pbpaste='xclip -selection clipboard -o'
alias reboot='sudo reboot'
alias r='source ~/.bashrc'
alias sleep="systemctl suspend"
alias s="sudo"
# alias s="systemctl suspend"
alias off="sudo /sbin/shutdown -r now"
alias toilet1="toilet -f bigmono9 -F gay"
tmx () {
	tmux new-session -d -n S0 Command
	tmux new-window -n S1
	tmux split-window -h
	tmux selectp -t 1
	tmux split-window -h
	tmux selectw -t 1
	tmux select-layout even-horizontal
	tmux split-window -v
	tmux -2 attach-session -d
}

alias u='yes Y| sudo apt update && yes Y| sudo apt full-upgrade && yes Y| sudo apt autoremove && sudo apt clean && yes Y| sudo apt autoclean'
alias ui='yes Y| sudo apt purge'
alias uii='yes Y| sudo apt autoremove && sudo apt --purge autoremove && sudo apt clean && sudo apt autoclean'
alias ud='yes Y| sudo apt update'
alias ug='yes Y| sudo apt upgrade'
alias uk='rsync -vrP --delete-after /home/ruben/workspace/git/keylinks/ root@keylinks.top:/var/www/keylinks'
alias ku='rsync -vrP --delete-after /home/ruben/workspace/git/keylinks/ root@keylinks.top:/var/www/keylinks > /dev/null 2>&1'
alias vba='visualboyadvance-m'


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
alias gcame='git commit --amend'
alias gcam='git commit --amend --no-edit'
alias gagcampf='git add . && git commit --amend --no-edit && git push -f'
alias gacampf='git add . && git commit --amend --no-edit && git push -f'
alias gamd='git commit --amend --no-edit'

alias gck="git checkout"
alias gckb="git checkout -b" #create new branch
alias gd='git diff'

alias gl="git log --graph --abbrev-commit --all --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
alias glb="git cherry -v master --abbrev"
alias gll="git log --oneline"
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


alias wifi_list='nmcli d wifi list'






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

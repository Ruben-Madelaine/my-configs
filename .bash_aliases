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


look4path(){
	my_var=$1
	sudo find ./ -name "$my_var"
	echo "The count is $(sudo find .//. -name "$my_var" -print | grep -c //)"
}
alias lfp="look4path"

look4(){
	my_var=$1
	sudo find ./ -name "$my_var" | rev | cut -d '/' -f1 | rev
	echo "The count is $(sudo find .//. -name "$my_var" -print | grep -c //)"
}
alias lf="look4"

## Append history after each command
shopt -s histappend
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
STYLE1='%C(auto)%h %<|(20)%gd %C(blue)%cr%C(reset) %gs (%s)'

## basic aliases
alias a='autokey-gtk &'
alias c='clear'
alias ar='yes Y| sudo apt-get autoremove'
alias cp='rsync --info=progress2'
alias conf='cd ~/.config'
alias cdp='cd /home/ruben/workspace/projects'
alias cdb='cd //media/ruben/HD1/books'
alias viread='vi ~/workspace/git/statistica/Reading/planning\ de\ lecture.md'
alias cdg='cd /home/ruben/workspace/git'
alias cdgk='cd /home/ruben/workspace/git/keylinks'
alias cdgm='cd /home/ruben/workspace/git/my-configs'
alias cdgs='cd /home/ruben/workspace/git/statistica'
alias cdl='cd /media/linux_hd'
alias cdlp='cd /media/linux_hd/private'
alias cdvm='cd /home/ruben/workspace/projects/virtual_machine/shared/'
alias dofus='cd ~/Games; ./Ankama\ Launcher-Setup-x86_64.AppImage'
alias dofus2="cd /home/ruben/.config/Ankama/zaap/dofus/; ./zaap-start.sh"

alias f='fish'
alias h='history'
alias i='yes Y| sudo apt install'
#alias ii='yes Y| sudo apt install > /dev/null 2>&1 &'
alias ii='screen -d -m yes Y| sudo apt install'
alias l='ls -CF'
alias la='ls -A'
alias x='redshift -x'
alias d='redshift -PO 5500 > /dev/null 2>&1'
alias dd='redshift -x > /dev/null 5>&1'
#alias darker='redshift -O 2000 > /dev/null 2>&1'
# alias ll='ls -alF'
alias ll='exa --header --long -all'
alias logout='sudo pkill -KILL -u ruben'
alias mx='unimatrix -c blue -w -s 99 -l ckg && neofetch'
alias mx='unimatrix -c yellow -w -s 99 -l ckg && neofetch'
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
alias vi='nvim'

alias vbal='vi ~/.bash_aliases'
alias vbrc='vi ~/.bashrc'
alias vbhi='vi ~/.bash_history'
alias vvrc='vi ~/.vim/.vimrc'
alias vtmx='vi ~/.tmux.conf'
alias vxrc='vi ~/etc/X11/xinit/xinitrc'
alias vrcl='vi ~/.config/awesome/rc.lua'
alias vpll='vi ~/workspace/git/statistica/Reading/planning_de_lecture.md'
alias v.='sudo vi .'


alias voli='amixer -D pulse set Master 5%+'
alias vold='amixer -D pulse set Master 5%-'
alias volm='amixer -D pulse set Master mute'
alias volum='amixer -D pulse set Master unmute'
alias vola='amixer -D pulse set Master unmute'


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


torb(){
 xargs /home/ruben/.local/share/torbrowser/tbb/x86_64/tor-browser_en-US/Browser/start-tor-browser < /media/linux_hd/tor/"$1"
}
torll(){
 for entry in "/media/linux_hd/tor"/*
 do
  if [ -f "$entry" ];then
    echo "$entry"| sed 's/^\.\///g'
  fi
 done
}

torl(){
 for file in /media/linux_hd/tor/*; do
  echo "${file##*/}"
 done
}

alias wifi_list='nmcli d wifi list'

#git moji
alias gac_fire='git add -A && git commit -m ":fire:' #Remove code or files.""
alias gac_bug='git add -A && git commit -m ":bug:' #Fix a bug.
alias gac_zap='git add -A && git commit -m ":zap:' #Improve performance.
alias gac_ambulance='git add -A && git commit -m ":ambulance:' #Critical hotfix.
alias gac_sparkles='git add -A && git commit -m ":sparkles:' #Introduce new features.
alias gac_memo='git add -A && git commit -m ":memo:' #Add or update documentation.
alias gac_rocket='git add -A && git commit -m ":rocket:' #Deploy stuff.
alias gac_tada='git add -A && git commit -m ":tada:' #Begin a project.
alias gac_white_check_mark='git add -A && git commit -m ":white_check_mark:' #Add or update tests.
alias gac_lock='git add -A && git commit -m ":lock:' #Fix security issues.
alias gac_bookmark='git add -A && git commit -m ":bookmark:' #Release / Version tags.
alias gac_construction='git add -A && git commit -m ":construction:' #Work in progress.
alias gac_heavy_plus_sign='git add -A && git commit -m ":heavy_plus_sign:' #Add a dependency.
alias gac_heavy_minus_sign='git add -A && git commit -m ":heavy_minus_sign:' #Remove a dependency.
alias gac_wrench='git add -A && git commit -m ":wrench:' #Add or update configuration files.
alias gac_hammer='git add -A && git commit -m ":hammer:' #Add or update development scripts.
alias gac_pencil2='git add -A && git commit -m ":pencil2:' #Fix typos.
alias gac_twisted_rightwards_arrows='git add -A && git commit -m ":twisted_rightwards_arrows:' #Merge branches.
alias gac_package='git add -A && git commit -m ":package:' #Add or update compiled files or packages.
alias gac_alien='git add -A && git commit -m ":alien:' #Update code due to external API changes.
alias gac_truck='git add -A && git commit -m ":truck:' #Move or rename resources (e.g.:' #files, paths, routes).
alias gac_boom='git add -A && git commit -m ":boom:' #Introduce breaking changes.
alias gac_bulb='git add -A && git commit -m ":bulb:' #Add or update comments in source code.
alias gac_beers='git add -A && git commit -m ":beers:' #Write code drunkenly.
alias gac_card_file_box='git add -A && git commit -m ":card_file_box:' #Perform database related changes.
alias gac_building_construction='git add -A && git commit -m ":building_construction:' #Make architectural changes.
alias gac_see_no_evil='git add -A && git commit -m ":see_no_evil:' #Add or update a .gitignore file.
alias gac_alembic='git add -A && git commit -m ":alembic:' #Perform experiments.
alias gac_label='git add -A && git commit -m ":label:' #Add or update types.
alias gac_seedling='git add -A && git commit -m ":seedling:' #Add or update seed files.
alias gac_wastebasket='git add -A && git commit -m ":wastebasket:' #Deprecate code that needs to be cleaned up.
alias gac_adhesive_bandage='git add -A && git commit -m ":adhesive_bandage:' #Simple fix for a non-critical issue.

alias gac_arrow_up='git add -A && git commit -m ":arrow_up:' #Upgrade dependencies.
alias gac_pushpin='git add -A && git commit -m ":pushpin:' #Pin dependencies to specific versions.
alias gac_construction_worker='git add -A && git commit -m ":construction_worker:' #Add or update CI build system.
alias gac_recycle='git add -A && git commit -m ":recycle:' #Refactor code.

alias gac_floppy_disk='git add -A && git commit -m ":floppy_disk:'
alias gac_cd='git add -A && git commit -m ":cd:'
alias gac_adhesive_bandage='git add -A && git commit -m ":adhesive_bandage:' #Simple fix of a non-critical issue.

#git moji short
alias gac_cw='git add -A && git commit -m ":construction_worker:'
alias gac_h='git add -A && git commit -m ":hammer:'
alias gac_w='git add -A && git commit -m ":wrench:'
alias gac_au='git add -A && git commit -m ":arrow_up:'
alias gac_ad='git add -A && git commit -m ":arrow_down:'
alias gac_pack='git add -A && git commit -m ":package:'
alias gac_pen='git add -A && git commit -m ":pencil:'
alias gac_p='git add -A && git commit -m ":pencil:'
alias gac_n='git add -A && git commit -m ":pencil:'
alias gac_wcm='git add -A && git commit -m ":white_check_mark:'
alias gac_t='git add -A && git commit -m ":tada:'
alias gac_r='git add -A && git commit -m ":rocket:'
alias gac_s='git add -A && git commit -m ":sparkles:'

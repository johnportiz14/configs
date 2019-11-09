
#===============================================================
#
# ALIASES
#
#===============================================================
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
# -> Prevents accidentally clobbering files.
alias mkdir='mkdir -p'
alias lt='ls -lhtr'	# list in order of modification

alias h='history'
alias j='jobs -l'
alias r='rlogin'
alias which='type -all'

# quick directory movement
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
# go to last directory you were in
alias back='cd $OLDPWD'

# copy the current working directory to the clipboard
alias cpwd='pwd | xclip -selection clipboard'

# quickly find files and directory
alias ff='find . -type f -name'
alias fd='find . -type d -name'

# get internet speed
alias speedtest='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test500.zip'

# quickly source the .bashrc file
alias srcbash='. ~/.bashrc'
#-------------------------------------------------- 
#	 Programs/Executables 
#-------------------------------------------------- 
# --- LaTeX ---
alias latexmk='latexmk --pdf -pvc'
# --- Tmux ---
alias nw='tmux new-window'
# --- FEHM ---
# set to whichever executable currently working with
alias xfehm='FEHM_v3.3.0macMav.04Dec15.exe'
# --- LaGriT ---
# NOTE: pylagritrc file is ~/.pylagritrc
# executable
alias lagrit='LaGriT_v3.3_macOS.No.Exodus'
# --- Git ---
alias glog='git log'
# --- gcc ---
# alias gcc='gcc-7.3'


#eval 'dircolors ~/.dir_colors
alias ls='ls -FHG'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

alias grep='grep --color=auto -n'
alias fgrep='fgrep --color=auto -n'
alias egrep='egrep --color=auto -n'

# print the current time
alias now='date +%T'



# --------------------- Leave this at bottom -------------------------
# --- modeline for .vimrc-specific settings
# foldmethod=marker:foldlevel=0


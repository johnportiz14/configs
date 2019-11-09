#===============================================================
#
# .BASHRC
#
#===============================================================
#PS1='\h:\W \u\$ '
#PS1='\[\e[1;91m\][\u@\h \w]\$\[\e[0m\] '
# -> this was a less good-looking prompt string (new one is at end of file)

#==== Enable aliases and functions filess
source ~/.bash_aliases
source ~/.bash_functions

alias vi='vim'

#==== Colors
export CLICOLOR=YES
export LS_COLORS='di=01;'
#set colors to match iTerm2 colors
export TERM=xterm-256color



# --- Powerline for bash shell ---
#POWERLINE_PATH=~/anaconda/lib/python3.6/site-packages/powerline
#source $POWERLINE_PATH/bindings/bash/powerline.sh

#==== PETSC and PFLOTRAN directory information
export PETSC_DIR=/Users/JohnOrtiz/petsc/petsc
export PETSC_ARCH=arch-darwin-c-debug
export PFLOTRAN_DIR=/Users/JohnOrtiz/software/pflotran

#==== Git branch ====
parse_git_branch() {
      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#==== Prompt String1:  adds extra colors to user@machine line in bash (end of file)
# PS1='\[\033[1;32m\][\u]\[\033[1;35m\]\w/\[\033[1;31m\]\[>>\[\033[0m\] '
PS1="\[\033[1;32m\][\u]\[\033[1;35m\]\w/\[\033[0m\]\[\033[33m\]\$(parse_git_branch)\[\033[1;31m\]\$\[\033[0m\] "
#PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\😸  \W\[\033[1;31m\]\$\[\033[0m\] ' 
#PS1='\[\033[1;32m\][\u] \[\033[1;35m\]\W/\[\033[1;31m\]\$\[\033[0m\] '
#PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] '

PROMPT_DIRTRIM=1 

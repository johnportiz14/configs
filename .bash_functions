#===============================================================
#
# FUNCTIONS
#
#===============================================================

#edit the selected bash config file
function editbash {
    echo $1
    if [[ "$1" == "a" ]]; then
        emacs ~/.bash_aliases
    elif [[ "$1" == "f" ]]; then
        emacs ~/.bash_functions
    else
        emacs ~/.bashrc
    fi
    echo "done"
}

# print the last ten modified files in the specified directory
function last {
    ls -lt $1 | head
}

# copy a file to the clipboard from the command line
function copyfile {
    cat $1 | xclip -selection clipboard
}


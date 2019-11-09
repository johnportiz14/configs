# ~/.bash_profile: executed by the command interpreter for login shells

# source .BASHRC
source ~/.bashrc

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
# export PATH

# added by Anaconda3 4.3.0 installer
#---- (adds anaconda to beginning of PATH variable
export PATH="/Users/JohnOrtiz/anaconda/bin:$PATH"

#-------------------------------------------------- 
# Other executables paths and environment variables
#-------------------------------------------------- 
#-- FEHM ----
PATH=$PATH:/Users/JohnOrtiz/software/fehm/executables
export FEHM_EXE=/Users/JohnOrtiz/software/fehm/executables
export FEHM_SCRIPTS=/Users/JohnOrtiz/scripts/fehm_scripts
#-- GRIDDER ----
PATH=$PATH:/Users/JohnOrtiz/software/gridder/src
export GRIDDER_EXE=/Users/JohnOrtiz/software/gridder/src
#-- LaGriT ----
PATH=$PATH:/Users/JohnOrtiz/software/LaGriT
export LAGRIT_EXE=/Users/JohnOrtiz/software/LaGriT
#-- PyLaGriT module ----
PATH=$PATH:/Users/JohnOrtiz/software/LaGriT/PyLaGriT
#-- Paraview ----
PATH=$PATH:/Applications/ParaView-5.4.0-RC1.app/Contents/MacOS
export PARAVIEW_EXE=/Applications/ParaView-5.4.0-RC1.app/Contents/MacOS
#-- for gcc ----
# PATH=/usr/bin/Cellar:$PATH

export PATH

#
#export PETSC_DIR=/Users/JohnOrtiz/petsc/petsc
#export PETSC_ARCH=arch-darwin-c-debug

#
#export PFLOTRAN_DIR=/Users/JohnOrtiz/software/pflotran
#export PATH=${PATH}:$PFLOTRAN_DIR/src/pflotran
#export PATH=${PATH}:$PETSC_DIR/$PETSC_ARCH/bin

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


source activate py36		#anaconda python environment 3.6
export PYTHONPATH=$PYTHONPATH:/Users/JohnOrtiz/anaconda/envs/py36/lib/python3.6/site-packages
# source activate python2	#anaconda python environment 2.7


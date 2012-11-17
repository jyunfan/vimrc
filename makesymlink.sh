#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired etc in ~/etc
############################

########## Variables

dir=~/etc                    # etc directory
olddir=~/etc_old             # old etc backup directory
files="vimrc vim"    # list of files/folders to symlink in homedir

##########

# create etc_old in homedir
echo "Creating $olddir for backup of any existing etc in ~"
mkdir -p $olddir
echo "...done"

# change to the etc directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing etc in homedir to etc_old directory, then create symlinks from the homedir to any files in the ~/etc directory specified in $files
for file in $files; do
    echo "Moving any existing etc from ~ to $olddir"
    mv ~/.$file ~/etc_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

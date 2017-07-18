#!/bin/bash

###############################################################################
# This script creates symlinks from the home directory to any desired dotfiles
#  in ~/.dotfiles
###############################################################################

cd ~

#####
## Variables
###
 
host=${HOSTNAME%%[.0-9]*}       #multiple checks. Remove full domain, remove multiple login servers for clustered machines (Vayu2, Vayu3 etc), circumvent Soma's hostname -s ipv6 lag

dir=~/.dotfiles                    # dotfiles directory
olddir=~/.dotfiles.dist             # old dotfiles backup directory

dotfiles="$dir/dotfiles"            # files to link into home
dotconfig="$dir/dotconfig"            # files to link into home/.config
host_dotfiles=$dir/hosts/$host/dotfiles # host-specific dot files

specfiles="xinitrc xprofile Xresources vimrc.local gitconfig ghci zathurarc"  # system specific files, these do not have to exist
##########

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo " done"


function install {
    src=$1
    shift
    for file in $(/bin/ls -1A $src); do
        [ -L ~/$file ] && unlink ~/$file  #Unlink files that already exist incase of script being run twice (new files, accedental re-runs etc)
        [ -e ~/$file ] && mv ~/$file $olddir/
        echo "Creating symlink to $file in home directory."
        ln -s ${src}/$file ~/$file
    done
}

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files

install $dotfiles 
install $dotconfig 
echo "Configuring any system specific files ..."
install $host_dotfiles

#dir_colors. NOTE: This section is specific to my configuration, I suggest you look at my dircolors-apoklinon repo for information
[ -f ~/.dir_colors ] && mv ~/.dir_colors ~/dotfiles_old
[ -f ~/.dir_colors.8bit ] && mv ~/.dir_colors.8bit ~/dotfiles_old
[ -f ~/.dir_colors.RGB ] && mv ~/.dir_colors.RGB ~/dotfiles_old
ln -s $dir/includes/dir_colors/dir_colors.8bit ~/.dir_colors.8bit
ln -s $dir/includes/dir_colors/dir_colors.RGB ~/.dir_colors.RGB

echo "Moved any existing dotfiles and folders from ~ to $olddir"

echo "Updating any submodules ..."
cd $dir
git submodule foreach git pull origin master
cd ..

echo "Setup complete."

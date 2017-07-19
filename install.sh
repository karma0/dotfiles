#!/bin/bash

echo
echo "************************ Starting Installation **********************"
echo

# Multiple checks. Remove full domain, remove multiple login servers for clustered machines (Vayu2, Vayu3 etc)
host=${HOSTNAME%%[.0-9]*}

host_install_script=
[ -f "./hosts/$host/install.sh" ] && host_install_script="./hosts/$host/install.sh"

echo "#########"
echo "# Setup #"
echo "###################################"
echo "#  Host : $host"

if [ -f "$host_install_script" ]; then
    echo "#  Host install script : $host_install_script"
else
    echo "#  Host install script : no"
fi

echo "###################################"


echo
echo "************ Recursive fetch on all dot files submodules ************"
echo
git submodule foreach git pull origin master

echo; echo "Please validate that there are no errors in the above output..."; echo

echo
echo "************************ Setting Up Homesick ************************"
echo
source ./.homesick/repos/homeshick/homeshick.sh
homeshick link

if [ -f "$host_install_script" ]; then
    echo
    echo "**************** Install Host-Specific Configuration ****************"
    echo
    $host_install_script
fí

echo "**************************** Completed! *****************************"
exit 0

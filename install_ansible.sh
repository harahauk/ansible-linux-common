#!/bin/sh
# This script gets you ready to use ansible
# @author Harald Hauknes <harald@hauknes.org>
decide_packager () {
        # Set default
        packager=dnf
        # Source OS-info
        . /etc/os-release
        case "$ID" in
        "fedora" | "almalinux" | "rhel")
                echo "RHEL-based OS detected"
                packager="dnf install -y"
                ;;
        "debian" | "ubuntu" | "kali")
                echo "Debian-based OS detected"
                packager="apt install -y"
                ;;
        *)
                echo "ERROR: Your version of linux is not recognized by this script, so be sure to read the script and install your own packages"
                echo "Will try to continue after you press <Enter>:"
                read -n 1 -s -r -p ""
                ;;
		esac
        }
decide_packager
user=`whoami`
# Python installed by dependencies
if test "$user" != "root"
then
  sudo $packager python3-pip sshpass
else
  $packager python3-pip sshpass
fi
pip install pipx
if test "$?" -eq 1
then
  echo Broken packages-warning? Will try to install pipx-package
  $packager pipx
fi
echo $?
# Use pipx to not break system packages
pipx install ansible-core
pipx ensurepath
bash
ansible-galaxy collection install community.general


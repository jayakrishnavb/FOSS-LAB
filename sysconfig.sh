#!/bin/bash
echo "Currently logged user and his logname"
echo $(logname)
echo "Your current shell"
echo $SHELL
echo "Your home directory"
echo $HOME
echo "Your operating system type"
echo $(arch)
echo "Your current path setting"
echo $PATH
echo "Your current working directory"
echo $(pwd)
echo "Show Currently logged number of users"
echo $(users | wc -w)

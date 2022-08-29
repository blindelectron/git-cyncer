#!/bin/bash
#a script for keeping a folder in sync with a git repo.
#author, blindelectron
#this software is licensed under the GNU general PUBLIC LICENSE3.0, see license for more details
export repodir=$1
export time=$2
if which git > /dev/null 2>/dev/null;then
sleep .01
else
echo "plese install git befor using this utility"
exit 1
fi
if [ -z $repodir ];then
echo "please provide a path to the repo folder on your machine."
exit 1;fi
if [ -z $time ];then
echo "no time was provided, setting time to 5 minutes"
export time=5
fi
while true;do
sleep$((60*$time))
cd repodir
git pull
#!/bin/bash
# User input to build directory structure
read -p "OP_Name: " opname
echo "Building $opname directories"
mkdir $HOME/$opname
mkdir $HOME/$opname/logs
mkdir $HOME/$opname/tools

#Start count number of terminals started with terminal.sh 
echo 0 > $HOME/$opname/logs/term.count 

#copying files and configs
cp -R pastables $HOME/$opname/ 
cp -R bin/ $HOME/$opname/.
cp -R etc/.* $HOME/

#reload xfce4 configs 
xfce4-panel -r

#setting up ENV
chmod +x $HOME/$opname/bin/*
echo "export opname=$opname" >> $HOME/.zshrc
echo "export PATH=$PATH:$HOME/$opname/bin" >> $HOME/.zshrc
echo "export PROMPT='%F{blue}%B%n@%m%b%f(%~)%*~$ '" >> $HOME/.zshrc
echo "alias ssh='ssh -E $HOME/$opname/logs/ssh.log'"

echo "Following directories were created..."
find $HOME/$opname

cd $HOME/$opname
$HOME/$opname/bin/monitor-traffic.sh

xfce4-terminal -x /bin/zsh -c "echo close the window you started in ; /bin/zsh" &

cd $HOME/$opname/pastables
xfce4-terminal --title=NOTES --geometry=80x40-0+35 -x /bin/zsh -c "vim $HOME/$opname/logs/notes.txt ; /bin/zsh" &

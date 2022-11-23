#!/bin/bash
# User input to build directory structure
read -p "OP_Name: " opname
echo "Building $opname directories"
mkdir $HOME/$opname
mkdir $HOME/$opname/logs
mkdir $HOME/$opname/tools

cp -R pastables $HOME/$opname/ 
cp -R bin/ ~/$opname/.
cp etc/.vimrc $HOME/.vimrc
cp etc/terminalrc $HOME/.config/xfce4/terminal/.

echo "export opname=$opname" >> $HOME/.zshrc
echo "export PATH=$PATH:$HOME/$opname/bin" >> $HOME/.zshrc

echo "Following directories were created..."
find $HOME/$opname

cd $HOME/$opname
$HOME/$opname/bin/monitor-traffic.sh
xfce4-terminal --geometry=80x40-0+35 -x /bin/zsh -c "vim $HOME/$opname/logs/notes.txt ; /bin/zsh" &

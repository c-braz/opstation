# User input to build directory structure
read -p "OP_Name: " opname
echo "Building $opname directories"

mkdir $HOME/$opname
mkdir $HOME/$opname/logs
mkdir $HOME/$opname/tools

cp -R bin/ ~/$opname/.
cp etc/terminalrc $HOME/.config/xfce4/terminal/.

chown -R kali:kali ~/$opname

echo "export PATH=$PATH:$HOME/$opname/bin" >> /etc/zsh/zshenv

echo "Following directories were created..."
find $HOME/$opname

$HOME/$opname/bin/monitor-traffic.sh
xfce4-terminal --geometry=80x40-0+35 --working-directory=~/remove/logs -x /bin/zsh -c "vim notes.txt ; /bin/zsh" &

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

xfce4-terminal -geometry 100x5-0-0 -x /bin/zsh -c "monitor-traffic.sh ; /bin/zsh" &
xfce4-terminal -geometry 615x515-0+35 --working-directory=~/remove/logs -x /bin/zsh -c "vim notes.txt ; /bin/zsh" &

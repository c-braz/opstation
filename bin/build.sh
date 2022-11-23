# User input to build directory structure
read -p "OP_Name: " opname
echo "Building $opname directories"

mkdir $HOME/$opname
mkdir $HOME/$opname/logs
mkdir $HOME/$opname/tools

cp -R bin/ ~/$opname/.
cp etc/terminalrc $HOME/.config/xfce4/terminal/.

chown -R kali:kali ~/$opname

echo "export PATH=$PATH:$HOME/$opname/bin" >> /etc/zsh/zshrc

echo "Following directories were created..."
find $HOME/$opname

xfce4-terminal -x /bin/zsh -c "monitor-traffic.sh ; /bin/zsh" &
xfce4-terminal --working-directory=~/remove/logs -x /bin/zsh -c "vim notes.txt ; /bin/zsh" &

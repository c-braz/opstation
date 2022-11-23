# User input to build directory structure
read -p "OP_Name: " opname
echo "Building $opname directories"

mkdir ~/$opname
mkdir ~/$opname/logs
mkdir ~/$opname/tools

cp -R bin/ ~/$opname/.
cp etc/terminalrc ~/.config/xfce4/terminal/.

chown -R kali:kali ~/$opname

echo "Following directories were created..."
find ~/$opname

xfce4-terminal -H -e ./bin/monitor-traffic.sh &

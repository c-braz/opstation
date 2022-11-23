ip a 
read -p "Which interface? " iface
sudo -E xfce4-terminal --geometry=100x5-0-0 -x /bin/zsh -c "tcpdump -i $iface -s 0 -nvvl | egrep --color=always '\[R.\]|$' | GREP_COLOR=\"1;36\" egrep --color=always '([0-9]{1,3}[\.]){3}[0-9]{1,3}|$'; /bin/zsh" &

sudo -E ip a 
read -p "
Interface name to monitor: " iface
sudo -E tcpdump -i $iface -s 0 -nvvl | egrep --color=always '\[R.\]|$' | GREP_COLOR="1;36" egrep --color=always '([0-9]{1,3}[\.]){3}[0-9]{1,3}|$' 

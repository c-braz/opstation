tcpdump -i eth0 -s 0 -nvvl | egrep --color=always '\[R.\]|$' | GREP_COLOR="1;36" egrep --color=always '([0-9]{1,3}[\.]){3}[0-9]{1,3}|$'

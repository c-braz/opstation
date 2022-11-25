#!/bin/bash
xfce4-terminal --title="ssh monitor" --geometry=80x10-500-0 -x /bin/zsh -c "tail -F $HOME/$opname/logs/ssh.log | GREP_COLOR=\"49;91;1\" egrep -i --color=always 'Connection refused|Killed|failed|$'" &

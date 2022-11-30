#!/bin/bash
read -p "
How many terminals? " count
i=0
while [ $i -lt $count ]
do 
let pos=($i*200)+35
let i=i+1
termcount=`cat $HOME/$opname/logs/term.count`
let termcount=$termcount+1
echo $termcount > $HOME/$opname/logs/term.count
mkdir $HOME/$opname/$termcount
cd $HOME/$opname/$termcount

xterm -bg lightyellow -bg black -geometry 75x15+0+$pos -e script -f -T$HOME/$opname/logs/TERM-$termcount.$$.time $HOME/$opname/logs/TERM-$termcount.$$.log  &

done

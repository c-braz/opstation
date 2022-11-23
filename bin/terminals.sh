#!/bin/bash
read -p "
How many terminals? " count
i=0

while [ $i -lt $count ]
do 
let pos=($i*200)+35
let i=i+1
cd $HOME/$opname/
xfce4-terminal --title=$i --geometry=75x15+0+$pos -x ./$HOME/$opname/bin/script.sh &
done

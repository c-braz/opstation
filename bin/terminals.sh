#!/bin/bash
read -p "
How many terminals? " count

i=0

while [ $i -lt $count ]
do 
let pos=($i*200)+35
echo $pos
xfce4-terminal --geometry=75x15+0+$pos &
let i=i+1
done

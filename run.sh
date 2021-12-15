#!/bin/bash

cd ~/Desktop/raw
path=$(pwd)
echo "Your workspace is: "$path

eval $cmd_a
echo "Find some raw files in this directory:"
#files=$(ls $path)
for filename in *.raw
do
	echo "    "${filename}
done
echo
while true
do
	echo "Enter your raw name(not with \".raw\"):"
	read filename
	echo "Your raw name is: ${filename}.raw"

	cmd_b="metavision_player -i ${filename}.raw --output-avi-file ${filename}.avi"
	eval $cmd_b
done
exit 0

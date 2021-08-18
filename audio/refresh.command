#!/bin/bash
workdir=$(cd $(dirname $0); pwd)
cd $workdir
roms=`ls res`
result=""
for i in $roms; do
	if [[ $i == *.mp3 ]]; then
		if [[ $result == "" ]]; then
			result=$i
		else
			result=$result,$i
		fi
	fi
done
echo $result > list.json
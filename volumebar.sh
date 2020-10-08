#!/bin/bash

sleep 0.1

VOLUMEPERCENTAGE=`/home/kasper/shellscripts/getvolume.sh`
VOLUMEBAR=""

for step in {5..100..5}
do
    if [[ step -lt $(( VOLUMEPERCENTAGE + 1 )) ]]
    then
	VOLUMEBAR+="#"
    else
	VOLUMEBAR+="="
    fi
done

VOLUMEBAR="    [ ${VOLUMEBAR} ]    "

echo $VOLUMEBAR

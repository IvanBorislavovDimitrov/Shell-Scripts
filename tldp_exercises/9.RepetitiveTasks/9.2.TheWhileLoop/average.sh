#!/bin/bash

SCORE=0
AVERAGE=0
SUM=0
NUM=0

while true; do

	echo -n "Enter your score (0-100%) ('q' for quit): "; read SCORE
	
	if (("$SCORE" < "0")) || (("$SCORE" > "100")); then
		echo "Enter a valid score"
	elif [[ "$SCORE" -eq "q" ]]; then
		echo "Average rating $AVERAGE"
		break
	else 
		SUM=$[$SUM + $SCORE]
		NUM=$[$NUM + 1]
		AVERAGE=$[$SUM / $NUM]
	fi
done

echo "The has ended"
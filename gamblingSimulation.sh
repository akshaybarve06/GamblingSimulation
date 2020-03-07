#!/bin/bash -x

# @Description: Gambling Simulation Problem
# @Author: Akshay Dhananjay Barve
# @Version: 18.04.3 lts
# @Since: 07 March 2020 / Saturday

stakes=100
bet=1
playingGoal=150
resignLimit=50

function play()
{
	while [[ $stakes -ge $resignLimit && $stakes -lt $playingGoal ]]
	do
		if [[ $((RANDOM%2)) -eq 1 ]]
		then
			stakes=$(($stakes+$bet))
		else
			stakes=$(($stakes-$bet))
		fi
	done
}
play

#!/usr/bin/env bash

function guessinggame {
	cur_dir_count_files=$(ls | wc -l)

	echo "Hi, how many files are there in the current directory? Enter the number:"

	while read ans_usr
	do
		if [[ $ans_usr -gt $cur_dir_count_files ]]
		then
			echo "Your guess is high, try to guess again."
			continue
		elif [[ $ans_usr -lt $cur_dir_count_files ]]
		then
			echo "Your guess is low, try to guess again."
			continue
		else
			echo "I congratulate you, you guessed right! Bye"
			break
		fi
	done
}

guessinggame
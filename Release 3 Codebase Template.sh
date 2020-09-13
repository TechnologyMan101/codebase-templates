#!/bin/bash
German () {
	clear
	echo "Hallo!"
	echo "Ich bin Nathan."
	sleep 5
}
English () {
	clear
	echo "Hello!"
	echo "I am Nathan."
	sleep 5
}
while true
do
	clear
	tput setaf 3
	echo "====================================="
	echo " --- Test for Release 3 Codebase ---"
	echo "====================================="
	tput setaf 3; echo "Press 1 followed by <return> to see German."
	tput setaf 3; echo "Press 2 followed by <return> to see English."
	tput setaf 1; echo "Press Q followed by <return> to quit." 
	tput sgr0
	read answer
	case "$answer" in
		1) German;;
		2) English;;
		q) exit;;
		Q) exit;;
	esac
	tput setaf 3; clear; echo "Hit <return> to finish."
	tput sgr0
	read answer
	exit
done

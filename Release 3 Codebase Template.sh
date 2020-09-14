#!/bin/bash
German () {
	clear
	tput setaf 3
	echo "German..."
	sleep 3
	clear
	tput sgr0
	echo "Hallo!"
	echo "Ich bin Nathan."
	sleep 3
}
English () {
	clear
	tput setaf 3
	echo "English..."
	sleep 3
	clear
	tput sgr0
	echo "Hello!"
	echo "I am Nathan."
	sleep 3
}
while true
do
	clear
	tput setaf 3
	echo "====================================="
	echo " --- Test for Release 3 Codebase ---"
	echo "====================================="
	echo "Press 1 followed by <return> to see German."
	echo "Press 2 followed by <return> to see English."
	tput setaf 1
	echo "Press Q followed by <return> to quit." 
	tput sgr0
	read answer
	case "$answer" in
		1) German;;
		2) English;;
		q) exit;;
		Q) exit;;
	esac
	clear
	tput setaf 2
	echo "Hit <return> to finish."
	tput sgr0
	read answer
	exit
done

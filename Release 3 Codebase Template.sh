#!/bin/bash
# Start of Function Cluster
mainmenu () {
	clear
	tput setaf 3
	echo "====================================="
	echo " --- Test for Release 3 Codebase ---"
	echo "====================================="
	echo "Press 1 to see German."
	echo "Press 2 to see English."
	tput setaf 9
	echo "Press Q to quit." 
	tput sgr0
	echo "Enter your selection followed by <return>:"
	read answer
	case "$answer" in
		1) German;;
		2) English;;
		q) quitscript;;
		Q) quitscript;;
	esac
	badoption
}
quitscript () {
	tput sgr0
	clear
	exit
}
badoption () {
	clear
	tput setaf 9
	echo "Invalid Option!"
	tput setaf 3
	echo "Returning to Main Menu..."
	tput sgr0
	sleep 3
	mainmenu
}
finish () {
	clear
	tput setaf 10
	echo "Hit <return> to finish."
	tput sgr0
	read answer
	quitscript
}
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
	finish
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
	finish
}
# End of Function Cluster
# Start of Main Script
while true
do
	mainmenu
done
# End of Main Script

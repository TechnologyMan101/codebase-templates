#!/bin/bash
quitscript () {
	tput sgr0
	clear
	exit
}
while true
do
	clear
	tput setaf 3
	echo "Press enter or another key and see the response."
	tput setaf 9
	echo "Press Q to quit."
	tput sgr0
	echo "Enter your selection:"
	IFS=""
	read -sN1 key
	case $(echo "$key" | tr A-Z a-z) in
		"")	clear; echo "This was really Enter, not space, tab or something else."; sleep 3;;
		q)	quitscript;;
		*)	clear; echo "This was not Enter."; sleep 3;;
	esac
done
